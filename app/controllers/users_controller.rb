class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create, :show, :edit, :update, :destroy]


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private
  
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def require_login
    unless current_user
      flash[:error] = "ログインが必要です。"
      redirect_to login_path
    end
  end
end