class User < ApplicationRecord
  has_many :memberships
  has_many :groups, through: :memberships

  has_many :rsvps
  has_many :events, through: :rsvps
  has_many :created_events, class_name: "Event"

  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, uniqueness: { allow_blank: true }
end
