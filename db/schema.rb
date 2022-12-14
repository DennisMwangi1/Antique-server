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

ActiveRecord::Schema.define(version: 2022_09_08_143953) do

  create_table "sessions", force: :cascade do |t|
    t.string "trainer_name"
    t.string "start_time"
    t.string "finish_time"
    t.integer "user_id"
    t.integer "trainer_id"
    t.string "date"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "age"
    t.integer "experience"
    t.string "specialization"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "email"
    t.string "password"
    t.string "gender"
    t.integer "age"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "category"
    t.string "source"
    t.string "creator"
    t.integer "intensity"
    t.integer "time"
    t.integer "user_id"
  end

end
