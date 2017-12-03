class UsersController < ApplicationController
  before_action :authenticate_user,  only: [:index, :current, :update]
  before_action :authorize,          only: [:update]

  def index
    render json: { status: 200, msg: 'Logged-in'}
  end

  def current
    current_user.update!(last_login: Time.now)
    render json: current_user
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  # def create
  #   @user = User.new(name: params[:name], email_address: params[:email_address])
  #   if @user.save
  #     render json: @user
  #   else
  #     render json: {errors: @user.errors.full_messages}, status: 422
  #   end
  # end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: {status: 200, msg: 'User was created.'}
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: { status: 200, msg: 'User details have been updated.' }
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  # def login
  #   if params[:name].include?('@')
  #     @user = User.find_by(email_address: params[:name])
  #   else
  #     @user = User.find_by(name: params[:name])
  #   end
  #   render json: @user
  # end

  private

  def user_params
   params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def authorize
    return_unauthorized unless current_user && current_user.can_modify_user?(params[:id])
  end


end
