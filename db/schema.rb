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

ActiveRecord::Schema.define(version: 20170224233216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.string   "title"
    t.integer  "releases"
    t.integer  "completed"
    t.integer  "scoreboard_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["scoreboard_id"], name: "index_challenges_on_scoreboard_id", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.string   "note_type"
    t.integer  "scoreboard_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["scoreboard_id"], name: "index_notes_on_scoreboard_id", using: :btree
  end

  create_table "scoreboards", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "day_points"
    t.string   "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_scoreboards_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.integer  "phase"
    t.string   "cohort"
    t.integer  "total_points"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "uid"
  end

  add_foreign_key "challenges", "scoreboards"
  add_foreign_key "notes", "scoreboards"
  add_foreign_key "scoreboards", "users"
end
