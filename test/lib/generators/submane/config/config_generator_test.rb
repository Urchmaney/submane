require "test_helper"
require "generators/submane/config/config_generator"

module Submane
  class ConfigGeneratorTest < Rails::Generators::TestCase
    tests ConfigGenerator
    destination Rails.root.join("tmp/generators")
    setup :prepare_destination

    test "generator creates config initializer" do
      run_generator ["submane:config"]
      assert_file "config/initializers/submane.rb"
    end
  end
end
