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

ActiveRecord::Schema.define(version: 20180201134912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "location_records", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "specie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_location_records_on_location_id"
    t.index ["specie_id"], name: "index_location_records_on_specie_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "rarity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "species"
    t.string "nickname"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "prototype"
    t.integer "evolute_level"
    t.string "img_url"
    t.integer "rarity"
    t.integer "growth_rate"
    t.integer "min_level"
    t.integer "max_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "location_records", "locations"
  add_foreign_key "location_records", "species", column: "specie_id"
end
