# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151115225939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "hospitals", id: :uuid, default: "gen_random_uuid()", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "level"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "med_tests", force: :cascade do |t|
    t.string   "record_id"
    t.string   "test"
    t.string   "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string   "record_id"
    t.string   "medication"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", id: :uuid, default: "gen_random_uuid()", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "phone"
    t.string   "email"
    t.string   "next_of_kin"
    t.string   "next_of_kin_contact"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "records", id: :uuid, default: "gen_random_uuid()", force: :cascade do |t|
    t.string   "patient_id",     null: false
    t.string   "hospital_id",    null: false
    t.string   "staff_id",       null: false
    t.integer  "height"
    t.integer  "weight"
    t.integer  "temperature"
    t.string   "blood_pressure"
    t.string   "symptoms"
    t.string   "diagnosis"
    t.string   "medication_id"
    t.string   "med_test_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "staffs", id: :uuid, default: "gen_random_uuid()", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
