# frozen_string_literal: true

class Telegram::Services < Telegram::Base
  require 'telegram/bot'
  include Telegram::Messages

  def initialize
    super("6642024775:AAFUMC24kXRKPzmHA8wRc-xpJdQXzU-ebuw")
    @users = {}
  end

  def execute(result)
    case result
    when Telegram::Bot::Types::Message
      chat_id = result.chat.id
      # show button language
      case result.text
      when '/start'
        @bot.api.send_message(chat_id: chat_id, text: message_first[:text], reply_markup: message_first[:markup]) unless @users[result.from.username]
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
          key_previous = nil
          result.message.reply_markup.inline_keyboard.detect do |kb_buttons|
            kb_buttons.detect { |kb_button| (message = Telegram::Utils.get_message(kb_button[:callback_data], language)) && (key_previous = message[:parent]) }.present?
          end
          message = Telegram::Utils.get_message(key_previous, language)
          if message && (parent_message = Telegram::Utils.get_message(message[:parent], language))
            edit_message(chat_id, result.message.message_id, parent_message[:answer], process_sub_markup(parent_message[:sub_group], language))
          else
            send_parent_messages(chat_id, result.message.message_id, { language: language, username: result.from.username })
          end
        when 'first_previous'
          send_parent_messages(chat_id, result.message.message_id, { language: language, username: result.from.username })
        else
          message = Telegram::Utils.get_message(result.data, language)
          edit_message(chat_id, result.message.message_id, message[:answer], process_sub_markup(message[:sub_group], language))
        end
      else
        language = result.data
        send_parent_messages(chat_id, result.message.message_id, { language: language, username: result.from.username })
      end
    end
  rescue Exception => e
    @bot.api.send_message(chat_id: chat_id, text: e.message)
  end

  private

  def send_parent_messages(chat_id, message_id, options = {})
    parent_messages = Telegram::Utils.get_parent_messages(options[:language])
    # save user info to cache
    set_user(options[:username], { language: options[:language] })

    case options[:language]
    when 'vn'
      edit_message(chat_id, message_id, "Bạn cần hỗ trợ gì?", process_markup(parent_messages))
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
    kb_buttons      = messages.map { |key, message| Telegram::Bot::Types::InlineKeyboardButton.new(text: message[:question], callback_data: key) }
    inline_keyboard = some_other_buttons.present? ? [kb_buttons, some_other_buttons] : [kb_buttons]
    Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: inline_keyboard)
  end

  def set_user(username, settings = {})
    Telegram::Utils.settings(username) { @users[username] = settings }
  end

  def delete_user(username)
    Telegram::Utils.reset_setting(username) { @users.delete username }
  end
end
