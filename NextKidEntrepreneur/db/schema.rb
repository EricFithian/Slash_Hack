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

ActiveRecord::Schema.define(version: 20170712232224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "camps", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "start_date"
    t.string   "end_date"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "charges", force: :cascade do |t|
    t.string   "uid"
    t.integer  "user_id"
    t.decimal  "amount",      precision: 8, scale: 2
    t.string   "customer_id"
    t.string   "description"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "question"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "school_profiles", force: :cascade do |t|
    t.string   "school_name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "contact_person"
    t.string   "occupation"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "student_profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "email"
    t.string   "occupation"
    t.string   "card_number"
    t.string   "card_expiration"
    t.string   "card_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "workshops", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "date"
    t.string   "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
