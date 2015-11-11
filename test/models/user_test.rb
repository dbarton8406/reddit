require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should not save user without first_name" do
    user = User.new

    refute user.save

  end

  test "should not save user without last_name" do
    user = User.new

    refute user.save
  end

  test "should save user with first_name" do
    user = users(:Daniel)

    refute user.save
    assert user.errors[:first_name].present?
  end

  test "should save user with last_name" do
    user = users(:Daniel)

    refute user.save
    assert user.errors[:last_name].present?
  end

  test "users should have a password" do
    user = users(:Daniel)
    user.password = nil

    refute user.save
    assert user.errors[:password].present?
  end
  test "users password should have a length of 10" do
    user = users(:Daniel)
    user.password = nil

    refute user.save
    assert user.password.count >= 10
  end
end
