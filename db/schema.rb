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

ActiveRecord::Schema.define(version: 20140825180617) do

  create_table "admin_about_mes", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_what_i_do"
    t.string   "sub_title_what_i_do"
  end

  create_table "admin_boxes", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "about_me_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "admin_boxes", ["about_me_id"], name: "index_admin_boxes_on_about_me_id", using: :btree

  create_table "admin_contacts", force: true do |t|
    t.string   "title"
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.string   "tlf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_events", force: true do |t|
    t.string   "year"
    t.string   "event"
    t.integer  "about_me_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_events", ["about_me_id"], name: "index_admin_events_on_about_me_id", using: :btree

  create_table "admin_headers", force: true do |t|
    t.string   "name"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "google"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "admin_latest_work_boxes", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "icon"
    t.integer  "latest_work_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_latest_work_boxes", ["latest_work_id"], name: "index_admin_latest_work_boxes_on_latest_work_id", using: :btree

  create_table "admin_latest_works", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
    t.string   "image1_file_name"
    t.string   "image1_content_type"
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name"
    t.string   "image3_content_type"
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
  end

  create_table "admin_projects", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "reference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "admin_references", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_separators", force: true do |t|
    t.text     "text"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_skill_abouts", force: true do |t|
    t.integer  "percent"
    t.string   "skill"
    t.integer  "about_me_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_skill_abouts", ["about_me_id"], name: "index_admin_skill_abouts_on_about_me_id", using: :btree

  create_table "admin_skills", force: true do |t|
    t.string   "skill"
    t.string   "icon"
    t.integer  "header_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_skills", ["header_id"], name: "index_admin_skills_on_header_id", using: :btree

end
