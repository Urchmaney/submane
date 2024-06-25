module Submane
  class ConfigGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)

    def create_config_file
      copy_file "submane_config.rb", "config/initializers/submane.rb"
    end
  end
end
