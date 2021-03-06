class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(self.user_params)

    if @user.save
      flash[:message] = "Welcome '#{@user.handle}'!"
      redirect_to root_path
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(
      :email,
      :handle,
      :profile_image_url,
      :statement,
      :password,
      :password_confirmation
    )
  end

end
