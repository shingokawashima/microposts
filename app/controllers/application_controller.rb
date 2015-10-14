class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
  include SessionsHelper
=======
>>>>>>> user-profile
  
  private
  def logged_in_user
    unless logged_in?
<<<<<<< HEAD
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
=======
    store_location
    flash[:danger] = "Please log in."
    redirect_to login_url
>>>>>>> user-profile
    end
  end
end
