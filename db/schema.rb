# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130420114706) do

  create_table "activities", :force => true do |t|
    t.integer  "user_id"
    t.float    "latitude"
    t.float    "longitude"
    t.date     "time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activities_tasks", :force => true do |t|
    t.integer  "activity_id"
    t.integer  "task_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "bulletins", :force => true do |t|
    t.integer  "event_id"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "bulletin_id"
    t.text     "message"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.integer  "activity_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.integer  "event_id"
    t.boolean  "completed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "task_type"
    t.string   "name"
  end

  create_table "user_rsvps", :force => true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.boolean  "rsvp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_type"
    t.datetime "oauth_expires_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.string   "image"
  end

end
