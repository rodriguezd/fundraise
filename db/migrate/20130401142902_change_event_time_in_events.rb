class ChangeEventTimeInEvents < ActiveRecord::Migration
  def up
  	change_column :events, :event_time, :time
  end

  def down
  end
end
