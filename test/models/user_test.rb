require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalize first_name and last_name" do
    user = User.new(first_name: "ringo", last_name: "star")
    assert_equal "Ringo Star", user.full_name
    user = User.new(first_name: "john", last_name: "Lenon")
    assert_equal "Ringo Star", user.full_name
  end
end
