class RsvpsController < ApplicationController
  before_action :set_rsvp, only: [:update, :destroy]
  before_action :authorize_user, only: [:update, :destroy]
  
  def create
    rsvp = current_user.rsvps.create!(rsvp_params)
    render json: rsvp, status: :created
  end

  def update
    @rsvp.update!(update_rsvp_params) # update it
    render json: @rsvp, status: :ok # render it as a JSON response with 200 status code
  end

  def destroy
    @rsvp.destroy
  end

  private

  def set_rsvp
    @rsvp = Rsvp.find(params[:id])
  end

  def authorize_user
    return if current_user.admin? || @rsvp.user == current_user
    render json: { "You are not permitted to perform that action." }, status: :forbidden
  end

  def rsvp_params
    params.permit(:event_id)
  end

  def update_rsvp_params
    params.permit(:attended)
  end
end
