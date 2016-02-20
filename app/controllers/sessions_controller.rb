class SessionsController < ApplicationController
  def new
  end

  def create
    # since we've made our emails unique, this should return only one!
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      # store data in the session!
      session[:user_id] = user.id

      flash[:message] = "Welcome '#{user.handle}'!"
      redirect_to root_path
    else
      flash[:message] = "Invalid login credentials."
      render :new
    end
  end
end
