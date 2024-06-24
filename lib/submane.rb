require "submane/version"
require "submane/engine"

module Submane
  include ActiveSupport::Configurable

  config_accessor :account_class_name

  class << self
    def configuration
      yield config
    end

    def account_class_name_sym
      account_class_name.to_s.split("::").last.underscore.to_sym
    end
  end
end
