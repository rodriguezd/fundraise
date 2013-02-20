class CorrectPasswordColumnsName < ActiveRecord::Migration
  def up
  	rename_column :users, :pasword_hash, :password_hash
  end

  def down
  end
end
