# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_02_22_112505) do
  create_table "submane_plans", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "visual_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["visual_order"], name: "index_submane_plans_on_visual_order", unique: true
  end

  create_table "submane_subscriptions", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "subscriber_id"
    t.datetime "end_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_submane_subscriptions_on_plan_id"
    t.index ["subscriber_id"], name: "index_submane_subscriptions_on_subscriber_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
