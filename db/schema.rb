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

ActiveRecord::Schema.define(version: 20160507175119) do

  create_table "barber_shops", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "business_name"
    t.string   "nit"
    t.string   "address"
    t.string   "city"
    t.string   "phone"
    t.string   "owner"
    t.string   "contact_name"
    t.string   "contact_phone1"
    t.string   "contact_phone2"
    t.string   "contact_email"
    t.boolean  "enable"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "lines", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.boolean  "enable"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "barber_shop_id"
  end

  add_index "lines", ["barber_shop_id"], name: "index_lines_on_barber_shop_id"

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.float    "price"
    t.text     "description"
    t.boolean  "enable"
    t.integer  "barber_shop_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "services", ["barber_shop_id"], name: "index_services_on_barber_shop_id"

  create_table "sublines", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.integer  "line_id"
    t.boolean  "enable"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sublines", ["line_id"], name: "index_sublines_on_line_id"

end
