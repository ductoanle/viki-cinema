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

ActiveRecord::Schema.define(version: 20140815035749) do

  create_table "cinemas", force: true do |t|
    t.string   "name"
    t.datetime "show_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "show_id"
    t.datetime "end_time"
  end

  create_table "shows", force: true do |t|
    t.string   "rating"
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "player_url"
    t.string   "image_url"
    t.integer  "duration"
  end

end
