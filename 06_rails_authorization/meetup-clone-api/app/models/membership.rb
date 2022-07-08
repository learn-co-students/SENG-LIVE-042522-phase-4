class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :group_id, uniqueness: {
    scope: [:user_id],
    message: "Can't join the same group more than once"
  }
end
