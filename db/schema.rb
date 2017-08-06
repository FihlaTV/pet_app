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

ActiveRecord::Schema.define(version: 20170805201413) do

  create_table "amenities", force: :cascade do |t|
    t.boolean  "patio",         default: false
    t.boolean  "daily_pic",     default: false
    t.boolean  "pets_on_bed",   default: false
    t.boolean  "pets_on_sofas", default: false
    t.boolean  "emergency_car", default: false
    t.boolean  "children",      default: false
    t.integer  "home_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "business_services", force: :cascade do |t|
    t.integer  "business_unit_id"
    t.integer  "service_id"
    t.decimal  "rate"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "business_units", force: :cascade do |t|
    t.integer  "owner_id"
    t.string   "status"
    t.text     "description"
    t.string   "address"
    t.text     "bio"
    t.string   "headline"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "neighborhood_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.boolean  "smoking"
    t.integer  "square_feet"
    t.integer  "business_unit_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "species"
    t.string   "race"
    t.integer  "size"
    t.string   "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "checkin"
    t.date     "checkout"
    t.integer  "guest_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "status"
    t.integer  "business_service_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "description"
    t.integer  "rating"
    t.integer  "guest_id"
    t.integer  "reservation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "rate_unit"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "title"
    t.decimal  "suggested_rate"
    t.decimal  "minimum_rate"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "firstname",              default: "", null: false
    t.string   "lastname",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "auth_token",             default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["auth_token"], name: "index_users_on_auth_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
