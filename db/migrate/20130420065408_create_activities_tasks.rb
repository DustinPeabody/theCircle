class CreateActivitiesTasks < ActiveRecord::Migration
  def change
    create_table :activities_tasks do |t|
      t.integer :activity_id
      t.integer :task_id
      t.timestamps
    end
  end
end
