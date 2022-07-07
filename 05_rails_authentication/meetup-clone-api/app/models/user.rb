class User < ApplicationRecord
  has_many :memberships
  has_many :groups, through: :memberships

  has_many :rsvps
  has_many :events, through: :rsvps
  has_many :created_events, class_name: "Event"
end
