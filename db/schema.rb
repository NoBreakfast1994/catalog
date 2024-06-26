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

ActiveRecord::Schema[7.1].define(version: 2024_06_23_131837) do
  create_table "businesses", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_businesses_on_user_id", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.boolean "visible", default: true, null: false
    t.integer "business_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_categories_on_business_id", unique: true
  end

  create_table "offers", force: :cascade do |t|
    t.text "description", default: ""
    t.integer "discounted_price_cents", default: 0, null: false
    t.string "discounted_price_currency", default: "BRL", null: false
    t.string "name", default: "", null: false
    t.integer "original_price_cents", default: 0, null: false
    t.string "original_price_currency", default: "BRL", null: false
    t.boolean "visible", default: true, null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_offers_on_category_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "businesses", "users"
  add_foreign_key "categories", "businesses"
  add_foreign_key "offers", "categories"
end
