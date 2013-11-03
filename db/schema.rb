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

ActiveRecord::Schema.define(version: 20131023144602) do

  create_table "attachments", force: true do |t|
    t.string   "title"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attachments_categories", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "attachment_id"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favourites", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slugs", force: true do |t|
    t.integer  "sluggable_id",                              null: false
    t.string   "sluggable_type",                            null: false
    t.boolean  "active",                     default: true, null: false
    t.string   "slug",           limit: 126,                null: false
    t.string   "scope",          limit: 126
    t.datetime "created_at"
  end

  add_index "slugs", ["sluggable_type", "scope", "slug"], name: "slugs_unique", unique: true, using: :btree
  add_index "slugs", ["sluggable_type", "sluggable_id", "active"], name: "slugs_for_record", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
