class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.float :latitude
      t.float :longitude
      t.date :time

      t.timestamps
    end
  end
end
