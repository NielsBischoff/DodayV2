class UsersController < ApplicationController
  def index
    @users = User.all #instance variable that references a table with all information on all users
  end

  def show
    @user = User.find(params[:id]) #instance variable that displays specific info held on one user
  end

  def new
    @user = User.new #this will provide a blank instance of a new user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path #users_path is an alias to a route prefix defined in our routes
    else
      render :new #same as redirect_to new_user_path alias but conserves form data
    end
  end #of create

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]) #look for a psecific user by params

    if @user.update_attributes(user_params) #and allow update of params
      redirect_to user_path
    else
      render :edit
    end
  end #of update action

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path #users_path is an alias to a route prefix defined in our routes
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password_digest)
  end

end # of users_controller
