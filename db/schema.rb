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

ActiveRecord::Schema[7.1].define(version: 2024_04_01_233039) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessons", force: :cascade do |t|
    t.string "lesson_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subject_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_lessons", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_user_lessons_on_lesson_id"
    t.index ["user_id"], name: "index_user_lessons_on_user_id"
  end

  create_table "user_subjects", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_user_subjects_on_subject_id"
    t.index ["user_id"], name: "index_user_subjects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login_id", null: false
    t.string "user_name"
    t.integer "role", default: 0, null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["login_id"], name: "index_users_on_login_id", unique: true
  end

  add_foreign_key "user_lessons", "lessons"
  add_foreign_key "user_lessons", "users"
  add_foreign_key "user_subjects", "subjects"
  add_foreign_key "user_subjects", "users"
end
