class Group < ApplicationRecord
  has_many :memberships
  has_many :members, through: :memberships, source: :user
  
  has_many :events
end
