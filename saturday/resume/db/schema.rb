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

ActiveRecord::Schema.define(version: 20180323071704) do

  create_table "educations", force: :cascade do |t|
    t.string   "per"
    t.string   "year"
    t.string   "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "comp_name"
    t.string   "designation"
    t.string   "from"
    t.string   "to"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "des"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.text     "obj"
    t.string   "father"
    t.string   "mother"
    t.string   "gender"
    t.string   "hobbies"
    t.string   "strenght"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
