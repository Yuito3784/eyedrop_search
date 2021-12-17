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

ActiveRecord::Schema.define(version: 2021_12_17_104316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "eyedrop_users", force: :cascade do |t|
    t.bigint "eyedrop_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["eyedrop_id"], name: "index_eyedrop_users_on_eyedrop_id"
    t.index ["user_id"], name: "index_eyedrop_users_on_user_id"
  end

  create_table "eyedrops", force: :cascade do |t|
    t.string "name", null: false
    t.text "effect", null: false
    t.text "having", null: false
    t.text "email", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "age", null: false
    t.string "sex", null: false
    t.float "screentime", null: false
    t.string "contact", null: false
    t.text "symptom", null: false
    t.text "point", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "eyedrop_users", "eyedrops"
  add_foreign_key "eyedrop_users", "users"
end
