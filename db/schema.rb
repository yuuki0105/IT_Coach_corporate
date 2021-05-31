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

ActiveRecord::Schema.define(version: 2021_05_31_040524) do

  create_table "big_categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "careers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "entry_id", null: false
    t.string "organization", null: false
    t.string "role", null: false
    t.date "start_month", null: false
    t.date "end_month"
    t.boolean "ongoing", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entry_id"], name: "index_careers_on_entry_id"
  end

  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "big_category_id"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["big_category_id"], name: "index_categories_on_big_category_id"
  end

  create_table "contact_categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "contact_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_contact_categories_on_category_id"
    t.index ["contact_id"], name: "index_contact_categories_on_contact_id"
  end

  create_table "contact_source_routes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "source_route_id"
    t.bigint "contact_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id"], name: "index_contact_source_routes_on_contact_id"
    t.index ["source_route_id"], name: "index_contact_source_routes_on_source_route_id"
  end

  create_table "contacts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "company", null: false
    t.string "roll", null: false
    t.string "email", null: false
    t.string "telephone", null: false
    t.text "will", null: false
    t.integer "budget_id", null: false
    t.integer "tech_ability_id", null: false
    t.integer "business_manner_id", null: false
    t.integer "communication_ability_id", null: false
    t.text "other", null: false
    t.boolean "privacy", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entries", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "telephone", null: false
    t.text "specialty", null: false
    t.boolean "privacy", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entry_categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_entry_categories_on_category_id"
    t.index ["entry_id"], name: "index_entry_categories_on_entry_id"
  end

  create_table "entry_source_routes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "source_route_id"
    t.bigint "entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entry_id"], name: "index_entry_source_routes_on_entry_id"
    t.index ["source_route_id"], name: "index_entry_source_routes_on_source_route_id"
  end

  create_table "portfolios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "entry_id", null: false
    t.string "title", null: false
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entry_id"], name: "index_portfolios_on_entry_id"
  end

  create_table "source_routes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "careers", "entries"
  add_foreign_key "categories", "big_categories"
  add_foreign_key "contact_categories", "categories"
  add_foreign_key "contact_categories", "contacts"
  add_foreign_key "contact_source_routes", "contacts"
  add_foreign_key "contact_source_routes", "source_routes"
  add_foreign_key "entry_categories", "categories"
  add_foreign_key "entry_categories", "entries"
  add_foreign_key "entry_source_routes", "entries"
  add_foreign_key "entry_source_routes", "source_routes"
  add_foreign_key "portfolios", "entries"
end
