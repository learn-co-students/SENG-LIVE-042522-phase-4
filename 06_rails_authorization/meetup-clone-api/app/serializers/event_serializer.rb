class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :location, :starts_at, :ends_at, :group_id, :rsvp, :user_can_modify

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

  def user_can_modify
    current_user.admin? || object.user == current_user
  end
end
