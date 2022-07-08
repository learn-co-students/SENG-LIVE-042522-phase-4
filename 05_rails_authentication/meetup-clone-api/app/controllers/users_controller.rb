class UsersController < ApplicationController
  def index
    render json: User.all
  end

  # GET '/me'
  def show
    if current_user
      render json: current_user, status: :ok
    else
      render json: { errors: "No active session" }, status: :unauthorized
    end
  end

  # POST '/signup'
  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  private

  def user_params
    params.permit(:username, :password, :password_confirmation)
  end
end
