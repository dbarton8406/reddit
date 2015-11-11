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
    user = User.new

    refute user.save
    assert user.errors[:first_name].present?
  end

  test "should save user with last_name" do
    user = User.new

    refute user.save
    assert user.errors[:last_name].present?
    
  end
end
