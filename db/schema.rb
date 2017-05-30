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

ActiveRecord::Schema.define(version: 20170529171905) do

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.string   "name"
  end

  create_table "blogs", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "article_title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "article_description"
    t.string   "post_by"
    t.string   "category"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "commenter_name"
    t.text     "comment_message"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "blog_id"
    t.string   "email"
    t.string   "web_address"
    t.index ["blog_id"], name: "index_comments_on_blog_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "subject"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
