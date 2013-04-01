class AddEventTimeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_time, :date
  end
end
