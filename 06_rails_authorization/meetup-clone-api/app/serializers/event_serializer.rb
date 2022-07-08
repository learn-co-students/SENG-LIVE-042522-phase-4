class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :location, :starts_at, :ends_at, :group_id, :rsvp

  def rsvp
    rsvps[object.id]
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
