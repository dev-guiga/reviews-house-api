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

ActiveRecord::Schema[8.1].define(version: 2026_09_15_192333) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "reading_level", ["beginner", "intermediate", "advanced"]
  create_enum "review_status", ["draft", "published", "archived"]

  create_table "book_reviews", force: :cascade do |t|
    t.integer "characters_rating", null: false
    t.text "complete_review", null: false
    t.datetime "created_at", null: false
    t.integer "general_rating", null: false
    t.jsonb "metadata", null: false
    t.enum "reading_level", null: false, enum_type: "reading_level"
    t.integer "story_rating", null: false
    t.datetime "updated_at", null: false
    t.boolean "was_completed", default: true
    t.integer "world_rating", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "deleted_at"
    t.text "description", null: false
    t.integer "external_id", null: false
    t.string "external_source", null: false
    t.string "media_type", null: false
    t.string "name", null: false
    t.integer "overall_rating"
    t.enum "review_status", default: "draft", null: false, enum_type: "review_status"
    t.boolean "spoiler_warning", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_reviews_on_deleted_at", where: "(deleted_at IS NULL)"
  end
end
