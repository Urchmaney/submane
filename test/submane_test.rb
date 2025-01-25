require "test_helper"

class SubmaneTest < ActiveSupport::TestCase
  test "configuration is setup" do
    account_class = "User"
    assert_equal Submane.account_class, account_class
  end
end
