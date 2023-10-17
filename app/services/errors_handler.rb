# frozen_string_literal: true

module ErrorsHandler
  extend ActiveSupport::Concern

  class InvalidLanguage < StandardError; end
end
