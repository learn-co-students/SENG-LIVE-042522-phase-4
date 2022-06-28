class Rsvp < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :event_id, uniqueness: { 
    scope: [:user_id],
    message: "You have already RSVP'd to this event"
  }
end
