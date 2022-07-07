class AddAttendedToRsvps < ActiveRecord::Migration[6.1]
  def change
    add_column :rsvps, :attended, :boolean
  end
end
