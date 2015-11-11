require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "should not save user without first_name" do
    user = User.new
    assert_not user.save
  end

   test "should not save user without last_name" do
    user = User.new
    assert_not user.save
  end

  test "should save user with first_name" do
    user = User.new
    refute_not user.save
  end

  test "should save user with last_name" do
    user = User.new
    refute_not user.save
  end
end
