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

ActiveRecord::Schema[7.1].define(version: 2024_03_27_175514) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.bigint "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_classrooms_on_school_id"
  end

  create_table "classrooms_educators", id: false, force: :cascade do |t|
    t.bigint "classroom_id", null: false
    t.bigint "educator_id", null: false
  end

  create_table "classrooms_students", id: false, force: :cascade do |t|
    t.bigint "classroom_id", null: false
    t.bigint "student_id", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educators", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_educators_on_school_id"
  end

  create_table "knowing_categories", force: :cascade do |t|
    t.string "name"
    t.text "descriptions"
    t.string "color"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.bigint "district_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_schools_on_district_id"
  end

  create_table "student_knowings", force: :cascade do |t|
    t.bigint "knowing_category_id", null: false
    t.bigint "student_id", null: false
    t.bigint "educator_id", null: false
    t.text "description"
    t.string "source"
    t.text "source_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["educator_id"], name: "index_student_knowings_on_educator_id"
    t.index ["knowing_category_id"], name: "index_student_knowings_on_knowing_category_id"
    t.index ["student_id"], name: "index_student_knowings_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_students_on_school_id"
  end

  add_foreign_key "classrooms", "schools"
  add_foreign_key "educators", "schools"
  add_foreign_key "schools", "districts"
  add_foreign_key "student_knowings", "educators"
  add_foreign_key "student_knowings", "knowing_categories"
  add_foreign_key "student_knowings", "students"
  add_foreign_key "students", "schools"
end
