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

ActiveRecord::Schema[8.0].define(version: 2024_12_01_195725) do
  create_table "random_table_options", force: :cascade do |t|
    t.integer "random_table_id", null: false
    t.string "text", null: false
    t.integer "option_start", null: false
    t.integer "option_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["random_table_id"], name: "index_random_table_options_on_random_table_id"
  end

  create_table "random_tables", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.integer "die"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "random_table_options", "random_tables"
end
