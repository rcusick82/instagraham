class UsersController < ApplicationController
  def show
    #code
  end

  def edit
    @user = User.find(params[:id])
    #code
  end

  def update
    current_user.update(user_params)
    redirect_to current_user

  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :website, :bio, :email, :phone, :gender)
 end
end
