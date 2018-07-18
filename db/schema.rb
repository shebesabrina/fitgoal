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

ActiveRecord::Schema.define(version: 2018_07_18_030231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.bigint "plans_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plans_id"], name: "index_days_on_plans_id"
  end

  create_table "goals", force: :cascade do |t|
    t.float "length"
    t.string "skill_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.bigint "goals_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goals_id"], name: "index_plans_on_goals_id"
  end

  create_table "user_plan_days", force: :cascade do |t|
    t.bigint "days_id"
    t.bigint "user_plans_id"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["days_id"], name: "index_user_plan_days_on_days_id"
    t.index ["user_plans_id"], name: "index_user_plan_days_on_user_plans_id"
  end

  create_table "user_plans", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "plans_id"
    t.datetime "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plans_id"], name: "index_user_plans_on_plans_id"
    t.index ["user_id"], name: "index_user_plans_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "days", "plans", column: "plans_id"
  add_foreign_key "plans", "goals", column: "goals_id"
  add_foreign_key "user_plan_days", "days", column: "days_id"
  add_foreign_key "user_plan_days", "user_plans", column: "user_plans_id"
  add_foreign_key "user_plans", "plans", column: "plans_id"
  add_foreign_key "user_plans", "users"
end
