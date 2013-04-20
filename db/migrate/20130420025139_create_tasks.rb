class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :type
      t.integer :event_id
      t.boolean :completed

      t.timestamps
    end
  end
end
