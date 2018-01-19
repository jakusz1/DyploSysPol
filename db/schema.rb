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

ActiveRecord::Schema.define(version: 20180104233757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "managers", force: :cascade do |t|
    t.integer "department", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_managers_on_user_id"
  end

  create_table "representatives", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_representatives_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "mark_type", null: false
    t.datetime "date", null: false
    t.text "summary", null: false
    t.bigint "teacher_id", null: false
    t.bigint "topic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_reviews_on_teacher_id"
    t.index ["topic_id"], name: "index_reviews_on_topic_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "index", null: false
    t.integer "semester", null: false
    t.integer "studies_type", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.integer "hours", null: false
    t.boolean "extra_hours_allow", default: false, null: false
    t.integer "degree_type", null: false
    t.bigint "user_id", null: false
    t.bigint "manager_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_teachers_on_manager_id"
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "topics", force: :cascade do |t|
    t.datetime "declaration_date", null: false
    t.boolean "managers_allow", default: false, null: false
    t.boolean "repres_allow", default: false, null: false
    t.integer "attending_number", null: false
    t.string "title", null: false
    t.boolean "if_eng", null: false
    t.integer "studies_type", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_topics_on_teacher_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "pesel", null: false
    t.string "uid"
    t.string "access_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
