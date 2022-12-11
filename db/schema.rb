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

ActiveRecord::Schema.define(version: 2022_12_11_210752) do

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.string "doctor_name"
    t.string "notes"
    t.integer "baby_id"
  end

  create_table "babies", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.string "baby_image_url"
    t.date "birthday"
    t.integer "user_id"
  end

  create_table "immunizations", force: :cascade do |t|
    t.string "vaccine"
    t.date "date"
    t.integer "baby_id"
  end

  create_table "milestones", force: :cascade do |t|
    t.string "development"
    t.string "notes"
    t.date "date"
    t.integer "baby_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
