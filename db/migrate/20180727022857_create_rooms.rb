class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :status
      t.integer :number
      t.float :daily_rate

      t.timestamps
    end
  end
end
