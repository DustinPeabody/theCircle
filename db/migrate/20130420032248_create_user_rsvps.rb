class CreateUserRsvps < ActiveRecord::Migration
  def change
    create_table :user_rsvps do |t|
      t.integer :user_id
      t.integer :event_id
      t.boolean :rsvp

      t.timestamps
    end
  end
end
