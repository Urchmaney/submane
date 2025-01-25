require "submane/version"
require "submane/engine"
require "submane/attributes"

module Submane
  extend Attributes

  # config_accessor :account_class

  def self.config
    @config ||= begin
      path = Rails.root.join("config", "submane.yml").to_s
      if File.exist?(path)
        YAML.safe_load(ERB.new(File.read(path)).result, aliases: true)
      else
        {}
      end
    end
  end

  def self.account_class
    unless defined?(@account_class)
      @account_class = config["account_class"]
      @account_class = (Account.name rescue nil) if @account_class.nil? # rubocop:disable Style/RescueModifier
    end
    @account_class
  end
end

ActiveSupport.on_load(:active_record) do
  include Submane::Models
end
