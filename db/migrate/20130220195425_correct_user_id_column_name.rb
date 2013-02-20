class CorrectUserIdColumnName < ActiveRecord::Migration
  def up
  	rename_column :events, :customer_id, :user_id
  end

  def down
  end
end
