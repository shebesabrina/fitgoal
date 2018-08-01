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

ActiveRecord::Schema.define(version: 2018_08_01_040618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.bigint "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "workout"
    t.index ["plan_id"], name: "index_days_on_plan_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "user_id"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reminders", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_plan_days", force: :cascade do |t|
    t.bigint "day_id"
    t.bigint "user_plan_id"
    t.datetime "run_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_user_plan_days_on_day_id"
    t.index ["user_plan_id"], name: "index_user_plan_days_on_user_plan_id"
  end

  create_table "user_plans", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "plan_id"
    t.datetime "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_user_plans_on_plan_id"
    t.index ["user_id"], name: "index_user_plans_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.integer "phone_number"
  end

  add_foreign_key "days", "plans"
  add_foreign_key "locations", "users"
  add_foreign_key "user_plan_days", "days"
  add_foreign_key "user_plan_days", "user_plans"
  add_foreign_key "user_plans", "plans"
  add_foreign_key "user_plans", "users"
end
