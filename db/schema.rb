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

ActiveRecord::Schema.define(version: 20150924173128) do

  create_table "competitions", force: :cascade do |t|
    t.string   "judge"
    t.string   "team"
    t.string   "start_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "competition_id"
    t.string   "title"
  end

  create_table "judges", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "competition_id"
  end

  create_table "scoresheets", force: :cascade do |t|
    t.integer  "app_serve_method"
    t.integer  "app_portion_nutrition"
    t.integer  "app_creativity_compatibility"
    t.integer  "app_flavor_texture_doneness"
    t.string   "app_comments"
    t.integer  "entree_serve_method"
    t.integer  "entree_portion_nutrition"
    t.integer  "entree_creativity_compatibility"
    t.integer  "entree_flavor_texture_doneness"
    t.string   "entree_comments"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "competition_id"
    t.string   "judge"
    t.string   "team"
    t.integer  "scoresheet_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "competition_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "role"
  end

end
