class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :location, :starts_at, :ends_at, :group_id, :rsvp

  def rsvp
    rsvps[object.id]
  end
end
