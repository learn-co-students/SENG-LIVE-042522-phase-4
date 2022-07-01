class EventsController < ApplicationController

  def index
    render json: Event.all, status: :ok
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

end
