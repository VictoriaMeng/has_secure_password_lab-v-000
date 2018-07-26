class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.password == user.password_confirmation
      user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
