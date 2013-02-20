class CorrectEventNameColumnName < ActiveRecord::Migration
  def up
  	rename_column :events, :name, :event_name
  end

  def down
  end
end
