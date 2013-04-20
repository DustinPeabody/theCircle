class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.int :user_id
      t.int :bulletin_id
      t.text :message

      t.timestamps
    end
  end
end
