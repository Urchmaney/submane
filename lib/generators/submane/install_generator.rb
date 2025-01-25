require "rails/generators/active_record"

module Submane
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include ActiveRecord::Generators::Migration
      source_root File.expand_path("templates", __dir__)

      def copy_migration
        migration_template "migration.rb", "db/migrate/install_submane.rb", migration_version: migration_version
      end

      def copy_config
        template "config.yml", "config/submane.yml"
      end

      private

      def migration_version
        "[#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}]"
      end
    end
  end
end
