require "submane/version"
require "submane/engine"

module Submane
  include ActiveSupport::Configurable

  config_accessor :account_class_name

  class << self
    def configuration(&block)
      return unless const_defined? Rails.to_s

      Rails.configuration.before_initialize do
        block.call config
      end
    end

    def account_class_name_sym
      account_class_name.to_s.split("::").last.underscore.to_sym
    end
  end
end

ActiveSupport.on_load(:active_record) do
  include Submane::Models
end
