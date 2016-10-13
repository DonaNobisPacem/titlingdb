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

ActiveRecord::Schema.define(version: 20160505060420) do

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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.boolean  "admin"
    t.boolean  "approved"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "steps", "titles"
  add_foreign_key "titles", "universities"
end
