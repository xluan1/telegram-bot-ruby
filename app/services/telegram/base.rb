# frozen_string_literal: true

class Telegram::Base
  require 'telegram/bot'

  def initialize(token)
    @token = token
    @bot   = Telegram::Bot::Client.new(@token)
  end

  def listen
    @bot.listen do |result|
      execute(result)
    end
  end

  def edit_message(chat_id, message_id, text, reply_markup = nil)
    @bot.api.edit_message_text(chat_id: chat_id, text: text, message_id: message_id, reply_markup: reply_markup)
  end
end
