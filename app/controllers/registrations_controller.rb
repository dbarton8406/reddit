class RegistrationsController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(first_name: params[:firstname],
                     last_name: params[:lastname],
                     email: params[:email],
                     password_digest: params[:password_digest])
    if @user.save
      redirect_to posts_path
    else
      render :new
    end
  end
end
