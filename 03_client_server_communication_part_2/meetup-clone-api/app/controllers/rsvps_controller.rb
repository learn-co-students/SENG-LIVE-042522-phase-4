class RsvpsController < ApplicationController
  def create
    rsvp = current_user.rsvps.create!(rsvp_params)
    render json: rsvp, status: :created
  end

  def update
    rsvp = Rsvp.find(params[:id]) # find the rsvp
    rsvp.update!(update_rsvp_params )# update it
    render json: rsvp, status: :ok # render it as a JSON response with 200 status code
  end

  def destroy
    Rsvp.find(params[:id]).destroy
  end

  private

  def rsvp_params
    params.permit(:event_id)
  end

  def update_rsvp_params
    params.permit(:attended)
  end
end
