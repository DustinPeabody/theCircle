class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.integer :location_id

      t.timestamps
    end
  end
end
