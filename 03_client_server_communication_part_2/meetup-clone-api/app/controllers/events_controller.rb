class EventsController < ApplicationController
  
  def create
    event = current_user.created_events.create!(event_params)
    render json: event, status: :created
  end

  private

  def event_params
    params.permit(:title, :description, :location, :starts_at, :ends_at, :group_id)
  end

end
