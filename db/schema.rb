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

ActiveRecord::Schema.define(version: 20160106041046) do

  create_table "steps", force: :cascade do |t|
    t.datetime "date_start"
    t.text     "description", limit: 65535
    t.integer  "title_id",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "steps", ["title_id"], name: "index_steps_on_title_id", using: :btree

  create_table "titles", force: :cascade do |t|
    t.string   "classification", limit: 255
    t.text     "description",    limit: 65535
    t.string   "owner",          limit: 255
    t.decimal  "total_area",                   precision: 16, scale: 2
    t.string   "acquisition",    limit: 255
    t.string   "status",         limit: 255
    t.datetime "date_issued"
    t.string   "tax_dec_no",     limit: 255
    t.text     "remarks",        limit: 65535
    t.integer  "university_id",  limit: 4
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "titles", ["university_id"], name: "index_titles_on_university_id", using: :btree

  create_table "universities", force: :cascade do |t|
    t.string   "university_name", limit: 255
    t.string   "university_code", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "steps", "titles"
  add_foreign_key "titles", "universities"
end