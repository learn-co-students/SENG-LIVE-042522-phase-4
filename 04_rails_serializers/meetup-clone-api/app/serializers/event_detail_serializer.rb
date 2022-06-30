class EventDetailSerializer < EventSerializer
  # belongs_to 
  has_many :attendees

  attributes :creator, :group, :time

  def creator
    object.user.username
  end

  def time
    "From #{object.starts_at.strftime("%A %m/%d/%y %l:%m %p")} to #{object.ends_at.strftime("%A %m/%d/%y %l:%m %p")}"
  end
end
