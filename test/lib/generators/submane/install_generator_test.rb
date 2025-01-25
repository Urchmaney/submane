require "test_helper"
require_relative "../../../../lib/generators/submane/install_generator"

module Submane
  class InstallGeneratorTest < Rails::Generators::TestCase
    tests Generators::InstallGenerator
    destination File.expand_path("../tmp", File.dirname(__FILE__))
    setup :prepare_destination

    test "generator creates config initializer" do
      run_generator ["submane:install"]
      assert_file "config/submane.yml"
    end

    test "generator creates migration_file" do
      run_generator ["submane:install"]
      assert_migration "db/migrate/install_submane.rb" do |migration|
        assert_instance_method :change, migration do |change|
          assert_match(/create_table :submane_plans/, change)
          assert_match(/create_table :submane_subscriptions/, change)
        end
      end
    end
  end
end
