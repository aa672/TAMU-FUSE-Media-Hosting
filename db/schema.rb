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

ActiveRecord::Schema.define(version: 2022_10_22_225917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "content_tags", force: :cascade do |t|
    t.integer "contentTag_id"
    t.integer "tag_id"
    t.integer "content_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contents", force: :cascade do |t|
    t.integer "content_id"
    t.string "content_type"
    t.string "content_storage_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "description"
    t.string "attachment"
    t.string "session_token"
    t.json "credentials"
  end

  create_table "internship_ops", primary_key: "internshipID", force: :cascade do |t|
    t.string "internship_name"
    t.string "company_name"
    t.string "contact_name"
    t.string "contact_email"
    t.string "company_link"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "internships", force: :cascade do |t|
    t.integer "internship_id"
    t.string "internship_name"
    t.string "company_name"
    t.string "contact_name"
    t.string "contact_email"
    t.string "company_link"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "module_sections", primary_key: "modID", force: :cascade do |t|
    t.string "module_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "modules", force: :cascade do |t|
    t.integer "module_id"
    t.string "module_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pages", primary_key: "pageID", force: :cascade do |t|
    t.integer "module_id"
    t.integer "content_id"
    t.string "page_name"
    t.string "page_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "passwords", force: :cascade do |t|
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.integer "tag_id"
    t.string "tag_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
