# frozen_string_literal: true

class Telegram::Services < Telegram::Base
  require 'telegram/bot'
  include Telegram::Messages

  def initialize
    super(ENV['TELEGRAM_BOT_TOKEN'])
    @users           = {}
    @message_history = {}
  end

  def execute(result)
    case result
    when Telegram::Bot::Types::Message
      chat_id = result.chat.id
      # show button language
      case result.text
      when '/start'
        user_settings = @users[result.from.username]
        if user_settings
          send_parent_messages(chat_id, result.message.message_id, user_settings[:language])
        else
          @bot.api.send_message(chat_id: chat_id, text: message_first[:text], reply_markup: message_first[:markup])
        end
      when '/restart'
        delete_user(result.from.username)
        @bot.api.send_message(chat_id: chat_id, text: message_first[:text], reply_markup: message_first[:markup])
      end
    when Telegram::Bot::Types::CallbackQuery
      chat_id       = result.message.chat.id
      user_settings = @users[result.from.username]

      if user_settings.present?
        language = user_settings[:language]
        case result.data
        when 'previous'
          key_previous = prev_message(chat_id, result.message.message_id)

          if (message = Telegram::Utils.get_message(key_previous, language))
            edit_message(chat_id, result.message.message_id, message[:answer], process_sub_markup(message[:sub_group], language))
            save_history(chat_id, result.message.message_id, message[:parent])
          else
            send_parent_messages(chat_id, result.message.message_id, language)
          end
        when 'first_previous'
          send_parent_messages(chat_id, result.message.message_id, language)
        else
          message = Telegram::Utils.get_message(result.data, language)
          edit_message(chat_id, result.message.message_id, message[:answer], process_sub_markup(message[:sub_group], language))
          save_history(chat_id, result.message.message_id, message[:parent])
        end
      else
        language = result.data
        send_parent_messages(chat_id, result.message.message_id, language)
        # save user info to cache
        set_user(@users[result.from.username], { language: language })
      end
    end
  rescue Exception => e
    @bot.api.send_message(chat_id: chat_id, text: e.message)
  end

  private

  def send_parent_messages(chat_id, message_id, language)
    parent_messages = Telegram::Utils.get_parent_messages(language)

    case language
    when 'vn'
      edit_message(chat_id, message_id, "Chào bạn, tôi là chuyên gia về quỹ DIRECT và có thể giải đáp mọi vấn đề thắc mắc của bạn. Bạn có thắc mắc gì không ?", process_markup(parent_messages))
    when 'en'
      edit_message(chat_id, message_id, "What support do you need?", process_markup(parent_messages))
    end
  rescue Exception => e
    puts e.message
    edit_message(chat_id, message_id, message_first[:text], message_first[:markup])
  end

  def process_sub_markup(sub_group, language)
    sub_messages = {}
    if sub_group.present?
      sub_messages = sub_group.split(",").map do |sub|
        sub         = sub.strip
        sub_message = Telegram::Utils.get_message(sub, language)
        [sub, sub_message] if sub_message
      end.compact
    end
    process_markup(sub_messages, prev_buttons)
  end

  def process_markup(messages = {}, some_other_buttons = [])
    kb_buttons      = messages.map { |key, message| [Telegram::Bot::Types::InlineKeyboardButton.new(text: message[:question], callback_data: key)] }
    inline_keyboard = some_other_buttons.present? ? kb_buttons.push(some_other_buttons) : kb_buttons
    Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: inline_keyboard)
  end

  def prev_message(chat_id, message_id)
    @message_history["#{chat_id}_#{message_id}"]
  end

  def save_history(chat_id, message_id, key)
    @message_history["#{chat_id}_#{message_id}"] = key
  end

  def set_user(username, settings = {})
    Telegram::Utils.setting(username) { @users[username] = settings }
  end

  def delete_user(username)
    Telegram::Utils.reset_setting(username) { @users.delete username }
  end
end
