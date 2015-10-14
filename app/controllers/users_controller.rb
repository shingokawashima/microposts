class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success]="Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
  end
  
<<<<<<< HEAD
  def follow(other_user)
    following_relationships.create(followed_id: other_user.id)
  end
  
  def unfollow(other_user)
    following_relationships.find_by(followed_id: other_user.id).destroy
  end
  
  def following_(other_user)
    following_user.include?(other_user)
  end
    
=======
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Saved changes successfully!"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
>>>>>>> user-profile
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :region, :password, :password_confirmation)
  end
  
end
