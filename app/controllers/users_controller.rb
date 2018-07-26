class UsersController < ApplicationController
  def create
    user = User.new(user_params).save
    redirect_to user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
