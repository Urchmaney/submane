require "test_helper"

module Submane
  class PlanTest < ActiveSupport::TestCase
    test "Plan counts is correct" do
      assert_equal Submane::Plan.count, 2
    end
  end
end
