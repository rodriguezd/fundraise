class ChangePhoneNumberColumnTypeInUsers < ActiveRecord::Migration
  def up
  	change_column :users, :phone_number, :integer
  end

  def down
  end
end
