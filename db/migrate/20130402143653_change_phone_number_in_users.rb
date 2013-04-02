class ChangePhoneNumberInUsers < ActiveRecord::Migration
  def up
  	change_column :users, :phone_number, :string
  end

  def down
  end
end
