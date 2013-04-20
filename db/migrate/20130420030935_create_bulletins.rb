class CreateBulletins < ActiveRecord::Migration
  def change
    create_table :bulletins do |t|
      t.int :event_id
      t.string :status

      t.timestamps
    end
  end
end
