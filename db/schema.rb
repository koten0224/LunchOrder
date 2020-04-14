# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_13_151918) do

  create_table "catagories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dish_groups", force: :cascade do |t|
    t.string "name"
    t.integer "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_dish_groups_on_store_id"
  end

  create_table "dish_styles", force: :cascade do |t|
    t.integer "store_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "dish_group_id"
    t.index ["dish_group_id"], name: "index_dish_styles_on_dish_group_id"
    t.index ["store_id"], name: "index_dish_styles_on_store_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "store_id", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "dish_style_id", default: 1, null: false
    t.integer "dish_group_id", default: 1, null: false
    t.index ["dish_group_id"], name: "index_dishes_on_dish_group_id"
    t.index ["dish_style_id"], name: "index_dishes_on_dish_style_id"
    t.index ["store_id"], name: "index_dishes_on_store_id"
  end

  create_table "events", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "store_id", null: false
    t.boolean "available"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_events_on_store_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "user_id", null: false
    t.integer "dish_id", null: false
    t.integer "total_price"
    t.integer "payed"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dish_id"], name: "index_orders_on_dish_id"
    t.index ["event_id"], name: "index_orders_on_event_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.string "tel"
    t.integer "catagory_id"
    t.integer "author_id"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "account"
    t.string "password_digest"
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dish_groups", "stores"
  add_foreign_key "dish_styles", "dish_groups"
  add_foreign_key "dish_styles", "stores"
  add_foreign_key "dishes", "dish_groups"
  add_foreign_key "dishes", "dish_styles"
  add_foreign_key "dishes", "stores"
  add_foreign_key "events", "stores"
  add_foreign_key "events", "users"
  add_foreign_key "orders", "dishes"
  add_foreign_key "orders", "events"
  add_foreign_key "orders", "users"
end
