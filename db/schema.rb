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

ActiveRecord::Schema.define(version: 2019_02_25_191045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favourites", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "hikes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hikes_id"], name: "index_favourites_on_hikes_id"
    t.index ["users_id"], name: "index_favourites_on_users_id"
  end

  create_table "hikes", force: :cascade do |t|
    t.string "photo"
    t.string "city"
    t.string "length"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.float "km"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "stars"
    t.string "integer"
    t.string "content"
    t.bigint "users_id"
    t.bigint "hikes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hikes_id"], name: "index_reviews_on_hikes_id"
    t.index ["users_id"], name: "index_reviews_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favourites", "hikes", column: "hikes_id"
  add_foreign_key "favourites", "users", column: "users_id"
  add_foreign_key "reviews", "hikes", column: "hikes_id"
  add_foreign_key "reviews", "users", column: "users_id"
end
