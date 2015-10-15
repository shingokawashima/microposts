class SessionsController < ApplicationController
  def new
  end
<<<<<<< HEAD

=======
  
>>>>>>> user-profile
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
<<<<<<< HEAD
      flash[:info] = "logged in as #{@user.name}"
=======
      flash[:info] ="logged in as #{@user.name}"
>>>>>>> user-profile
      redirect_to @user
    else
      flash[:danger] = 'invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
<<<<<<< HEAD
=======
  
  
>>>>>>> user-profile
end
