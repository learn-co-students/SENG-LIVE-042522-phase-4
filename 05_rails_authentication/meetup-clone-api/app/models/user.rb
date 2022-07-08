class User < ApplicationRecord
  has_many :memberships
  has_many :groups, through: :memberships

  has_many :rsvps
  has_many :events, through: :rsvps
  has_many :created_events, class_name: "Event"

  has_secure_password
  validates :username, presence: true, uniqueness: true
  
  # validate :my_custom_password_rules

  # def my_custom_password_rules
  #   # if my rules are broken
  #   # add an error to the object: errors.add(:password, "must have a number, etc.")
  # end
end
