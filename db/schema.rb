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

ActiveRecord::Schema.define(version: 2022_03_29_020301) do

  create_table "companies", force: :cascade do |t|
    t.text "name"
    t.text "identification"
    t.text "address"
    t.text "phone"
    t.text "email"
    t.text "country"
    t.text "state"
    t.text "city"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.date "scheduler"
    t.integer "quantity"
    t.float "value"
    t.float "total"
    t.integer "company_id"
    t.integer "people_id"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_orders_on_company_id"
    t.index ["people_id"], name: "index_orders_on_people_id"
  end

  create_table "people", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.text "phone"
    t.text "email"
    t.text "whatsapp"
    t.text "works"
    t.text "country"
    t.text "state"
    t.text "city"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.text "name"
    t.text "details"
    t.float "price"
    t.string "comments"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_products_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
