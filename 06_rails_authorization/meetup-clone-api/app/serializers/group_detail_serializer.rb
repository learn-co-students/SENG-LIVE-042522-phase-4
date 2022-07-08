class GroupDetailSerializer < GroupSerializer
  has_many :members
  has_many :events
end
