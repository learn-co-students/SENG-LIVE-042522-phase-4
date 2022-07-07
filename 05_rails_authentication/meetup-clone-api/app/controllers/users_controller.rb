class UsersController < ApplicationController
  def index
    render json: User.all
  end

  # GET '/me'
  def show
    if current_user
      render json: current_user
    else
      render json: { errors: 'No active session' }, status: :unauthorized
    end
  end

  # POST '/signup'
  def create

  end

end
