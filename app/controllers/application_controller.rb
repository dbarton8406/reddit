class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :encrypted_password, :password_confirmation) }
  end
end
# user_signed_in?
# current_user
# user_session
#   helper_method :current_user

#   def current_user
#     user_id = session[:user_id]
#     user_id && User.find(user_id)
#   end

#   def authenticate_user!
#     unless current_user
#       flash[:notice] = "You have to be logged in to do that."
#       redirect_to login_path
#     end

