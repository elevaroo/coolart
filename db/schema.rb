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

ActiveRecord::Schema.define(version: 2020_12_01_091550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "location"
    t.string "nationality"
    t.date "date_of_birth"
    t.string "vita"
    t.string "artschool"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "artworks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "year"
    t.integer "price"
    t.integer "height"
    t.integer "width"
    t.integer "depth"
    t.bigint "medium_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "artist_id", null: false
    t.index ["artist_id"], name: "index_artworks_on_artist_id"
    t.index ["category_id"], name: "index_artworks_on_category_id"
    t.index ["medium_id"], name: "index_artworks_on_medium_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "collectors", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorite_artworks", force: :cascade do |t|
    t.bigint "artwork_id", null: false
    t.bigint "collector_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_favorite_artworks_on_artwork_id"
    t.index ["collector_id"], name: "index_favorite_artworks_on_collector_id"
  end

  create_table "media", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "artwork_id", null: false
    t.bigint "collector_id", null: false
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_orders_on_artwork_id"
    t.index ["collector_id"], name: "index_orders_on_collector_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.bigint "artwork_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_tags_on_artwork_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "account_type", null: false
    t.bigint "account_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.index ["account_type", "account_id"], name: "index_users_on_account_type_and_account_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "artworks", "artists"
  add_foreign_key "artworks", "categories"
  add_foreign_key "artworks", "media"
  add_foreign_key "favorite_artworks", "artworks"
  add_foreign_key "favorite_artworks", "collectors"
  add_foreign_key "orders", "artworks"
  add_foreign_key "orders", "collectors"
  add_foreign_key "tags", "artworks"
end
