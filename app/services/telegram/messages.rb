# frozen_string_literal: true

module Telegram::Messages
  extend ActiveSupport::Concern
  require 'csv'

  def message_first
    inline_keyboard = [[
                         Telegram::Bot::Types::InlineKeyboardButton.new(text: "Việt Nam", callback_data: "vn"),
                         Telegram::Bot::Types::InlineKeyboardButton.new(text: "Anh", callback_data: "en")
                       ]]
    { text: "Ngôn ngữ", markup: Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: inline_keyboard) }
  end

  def prev_buttons
    [
      Telegram::Bot::Types::InlineKeyboardButton.new(text: "<<", callback_data: "first_previous"),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: "<", callback_data: "previous")
    ]
  end

  class_methods do
    def get_messages(language)
      case language
      when 'vn'
        vn_messages
      when 'en'
        en_messages
      else
        raise ErrorsHandler::InvalidLanguage, "#{language} language is not supported"
      end
    end

    private

    def vn_messages
      items = {}
      CSV.foreach('db/files/vn_messages.csv', headers: true) do |row|
        items[row['key']] = {
          key:       row['key'],
          question:  row['question'],
          answer:    row['answer'],
          sub_group: row['sub_group'],
          parent:    row['parent'],
        }
      end
      items
    end

    def en_messages
      Constants::ENGLISH.to_h { |item| [item[:key], item] }
    end
  end
end
