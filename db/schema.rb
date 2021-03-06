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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130804132834) do

  create_table "activities", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "author_id"
    t.datetime "start_at"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status"
  end

  create_table "activities_users", id: false, force: true do |t|
    t.integer "activity_id", null: false
    t.integer "user_id",     null: false
  end

  add_index "activities_users", ["activity_id"], name: "index_activities_users_on_activity_id"
  add_index "activities_users", ["user_id"], name: "index_activities_users_on_user_id"

  create_table "activity_comments", force: true do |t|
    t.integer  "author_id"
    t.text     "subject"
    t.integer  "reply_to_id"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "users", force: true do |t|
    t.string   "nickname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
