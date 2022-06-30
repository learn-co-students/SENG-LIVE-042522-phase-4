class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :location, :starts_at, :ends_at, :group_id, :rsvp

  def rsvp
    current_user.rsvps.find_by(event_id: object.id)
  end
end
