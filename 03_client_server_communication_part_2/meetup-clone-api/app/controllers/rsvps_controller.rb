class RsvpsController < ApplicationController
  def create
    rsvp = current_user.rsvps.create!(rsvp_params)
    render json: rsvp, status: :created
  end

  private

  def rsvp_params
    params.permit(:event_id)
  end
end
