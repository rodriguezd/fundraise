class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :type
      t.string :address
      t.string :city
      t.string :zip_code

      t.timestamps
    end
  end
end
