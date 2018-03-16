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

ActiveRecord::Schema.define(version: 20180316215259) do

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "email"
    t.string "secondary_email"
    t.string "phone"
    t.string "secondary_phone"
    t.integer "vet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "rdvm_id"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "weight"
    t.string "species"
    t.string "breed"
    t.integer "client_id"
    t.integer "vet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rdvms", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "clinic_name"
    t.string "clinic_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "preffered_contact"
    t.string "phone"
    t.string "email"
    t.integer "vet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vet_users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "email"
    t.string "phone"
    t.string "crematory_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
