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

    assert user.save, "should save"
  end

  test "should save user with last_name" do
    user = users(:Daniel)

    assert user.save, "should save" 
  end

  test "users should have a password_digest" do
    user = users(:Daniel)
    user.password_digest= nil

    refute user.save
    assert user.errors[:password_digest].present?
  end
  test "users password_digest cannot be less than 10 characters" do
    user = users(:Daniel)
    user.password_digest = "hello"

    refute user.save, "User saved."
    assert user.errors[:password_digest].present?, "No errors for password_digest digest."
  end
end
