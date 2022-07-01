class EventsController < ApplicationController

  def index
    render json: Event.all, scope: rsvps, scope_name: :rsvps, status: :ok
  end

  def show
    render json: Event.find(params[:id]), serializer: EventDetailSerializer, status: :ok
  end
  
  def create
    event = current_user.created_events.create!(event_params)
    render json: event, status: :created
  end

  def update
    event = Event.find(params[:id])
    event.update!(event_params)
    render json: event, status: :ok
  end

  def destroy
    Event.find(params[:id]).destroy!
  end

  private

  def event_params
    params.permit(:title, :description, :location, :starts_at, :ends_at, :group_id)
  end

  # cut down on additional queries by creating a
  # hash storing the current user's rsvps by event_id
  def rsvps
    if @rsvps
      @rsvps
    else
      @rsvps = {}
      current_user.rsvps.each do |rsvp|
        @rsvps[rsvp.event_id] = rsvp
      end
      @rsvps
    end
  end

end
