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

ActiveRecord::Schema.define(version: 20140401222513) do

  create_table "items", force: true do |t|
    t.string   "number"
    t.string   "item"
    t.string   "url"
    t.string   "user"
    t.string   "thumbnail"
    t.string   "sales"
    t.string   "rating"
    t.string   "rating_decimal"
    t.string   "cost"
    t.date     "uploaded_on"
    t.date     "last_update"
    t.string   "tags"
    t.string   "category"
    t.string   "live_preview_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
