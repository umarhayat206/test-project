# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_07_094355) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locality"
    t.string "scientific_name_id"
    t.string "scientific_name"
  end

  create_table "specie_locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "specie_id"
    t.bigint "location_id"
    t.index ["location_id"], name: "index_specie_locations_on_location_id"
    t.index ["specie_id"], name: "index_specie_locations_on_specie_id"
  end

  create_table "species", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "decimal_latitude"
    t.string "decimal_longitude"
    t.string "geodetic_datum"
    t.string "coordinate_uncertainty_in_meters"
    t.string "footprintWKT"
    t.string "kingdom"
    t.string "phylum"
    t.string "specie_class"
    t.string "order"
    t.string "family"
    t.string "genus"
    t.string "scientific_name_authorship"
    t.string "fid"
  end

end
