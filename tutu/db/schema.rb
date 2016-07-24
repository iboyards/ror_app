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

ActiveRecord::Schema.define(version: 20160724094450) do

  create_table "cars", force: :cascade do |t|
    t.integer  "number"
    t.integer  "top_places"
    t.integer  "bottom_places"
    t.integer  "side_top_places"
    t.integer  "side_bottom_places"
    t.integer  "seat_places"
    t.integer  "train_id"
    t.string   "type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "railway_stations", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "railway_stations_routes", force: :cascade do |t|
    t.integer "railway_station_id"
    t.integer "route_id"
    t.integer "number"
    t.time    "arrival_time"
    t.time    "departure_time"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "train_id"
    t.integer  "first_station_id"
    t.integer  "last_station_id"
    t.integer  "user_id"
  end

  create_table "train_routes", force: :cascade do |t|
  end

  create_table "trains", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "route_id"
    t.integer  "current_station_id_id"
    t.boolean  "sort_from_head",        default: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
