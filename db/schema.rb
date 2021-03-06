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

ActiveRecord::Schema.define(version: 2019_03_07_182115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "hike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hike_id"], name: "index_favourites_on_hike_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "hikes", force: :cascade do |t|
    t.string "photo"
    t.string "category"
    t.string "city"
    t.integer "length"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.float "km"
    t.float "longitude"
    t.float "latitude"
    t.string "address"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "photo"
    t.bigint "hike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "description"
    t.index ["hike_id"], name: "index_pictures_on_hike_id"
    t.index ["user_id"], name: "index_pictures_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "stars"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "hike_id"
    t.index ["hike_id"], name: "index_reviews_on_hike_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
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

  add_foreign_key "favourites", "hikes"
  add_foreign_key "favourites", "users"
  add_foreign_key "pictures", "users"
  add_foreign_key "reviews", "hikes"
  add_foreign_key "reviews", "users"
end
