# frozen_string_literal: true

class Telegram::Utils
  class << self
    def setting(username)
      Rails.cache.fetch("TelegramUtils.settings_#{username}", expires_in: Constants::EXPIRATION_TIME) do
        yield
      end
    end

    def reset_setting(username)
      Rails.cache.delete("TelegramUtils.settings_#{username}")
      yield
    end

    def get_messages(language = "vn")
      Rails.cache.fetch("TelegramUtils.messages_#{language}", expires_in: Constants::EXPIRATION_TIME) do
        Telegram::Services.get_messages(language)
      end
    end

    def get_parent_messages(language)
      Rails.cache.fetch("TelegramUtils.parent_messages_#{language}", expires_in: Constants::EXPIRATION_TIME) do
        get_messages(language).map { |key, item| [key, item] unless item[:parent].present? }.compact
      end
    end

    def get_message(key, language)
      get_messages(language)[key]
    end
  end
end
