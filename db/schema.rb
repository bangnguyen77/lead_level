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

ActiveRecord::Schema.define(version: 20160729011858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email_address"
    t.integer "phone_number"
    t.string  "address_line1"
    t.string  "address_line2"
    t.string  "city"
    t.integer "zipcode"
    t.string  "state"
    t.integer "user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string  "address_line1"
    t.string  "address_line2"
    t.string  "city"
    t.integer "zipcode"
    t.string  "state"
    t.integer "user_id"
    t.string  "name"
    t.integer "contact_id"
    t.string  "rating"
  end

  create_table "places_users", force: :cascade do |t|
    t.integer "place_id"
    t.integer "user_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "user_id"
    t.datetime "timestamp"
    t.date     "test_date"
    t.string   "lab"
    t.boolean  "over_limit"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
  end

end
