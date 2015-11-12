require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  test "new method supplies a empty model" do
    get :new
    assert_response :success
    assert_not_nil assigns(:user)
    assert assigns(:user).is_a?(User)
    assert_template :new
  end
  test "should create user" do
    assert_difference('User.count') do
      binding.pry
      post :create, user: {first_name: "John", last_name: "Smith", email: "Rickard@prez2020.com", password_digest: "cookiesnom" }
      assert_redirected_to posts_path
    end
  end
end