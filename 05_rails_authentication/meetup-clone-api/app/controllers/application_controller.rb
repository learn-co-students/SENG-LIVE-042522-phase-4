class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :render_validation_errors
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  
  private

  # mocked for now to return the first user
  # later on this will return the user that's currently logged in
  # (after we know how to do authentication)
  def current_user
    User.first
  end

  def render_validation_errors(e)
    render json: { errors: e.record.errors }, status: :unprocessable_entity
  end
  
  def render_not_found(e)
    render json: { errors: e.message }, status: :not_found
  end
end
