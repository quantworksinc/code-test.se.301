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

ActiveRecord::Schema.define(version: 2019_03_04_013125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.text "name"
    t.text "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "footfall", id: :serial, force: :cascade do |t|
    t.integer "number", null: false
    t.date "date", null: false
  end

  create_table "foots", force: :cascade do |t|
    t.integer "number"
    t.date "date_entry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "login", primary_key: "user_id", id: :serial, force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "email_id", limit: 50, null: false
    t.string "pwd", limit: 50, null: false
    t.integer "flag", null: false
  end

  create_table "logins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review", primary_key: "user_id", id: :integer, default: nil, force: :cascade do |t|
  end

  add_foreign_key "review", "login", column: "user_id", primary_key: "user_id", name: "review_login_user_id_fk", on_update: :cascade, on_delete: :cascade
end
