require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "users has_many subscription" do
    assert_equal users(:david).subscriptions.count, 1
  end
end
