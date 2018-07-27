class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.references :room, foreign_key: true
      t.references :guest, foreign_key: true
      t.integer :days
      t.integer :status


      t.timestamps
    end
  end
end
