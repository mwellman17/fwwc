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

ActiveRecord::Schema.define(version: 2019_06_26_185050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brackets", force: :cascade do |t|
    t.string "name", null: false
    t.string "pick_1", null: false
    t.string "pick_2", null: false
    t.string "pick_3", null: false
    t.string "pick_4", null: false
    t.string "pick_5", null: false
    t.string "pick_6", null: false
    t.string "pick_7", null: false
    t.string "pick_8", null: false
    t.string "pick_9", null: false
    t.string "pick_10", null: false
    t.string "pick_11", null: false
    t.string "pick_12", null: false
    t.string "pick_13", null: false
    t.string "pick_14", null: false
    t.string "pick_15", null: false
    t.string "pick_16", null: false
    t.string "pick_q1", null: false
    t.string "pick_q2", null: false
    t.string "pick_q3", null: false
    t.string "pick_q4", null: false
    t.string "pick_q5", null: false
    t.string "pick_q6", null: false
    t.string "pick_q7", null: false
    t.string "pick_q8", null: false
    t.string "pick_s1", null: false
    t.string "pick_s2", null: false
    t.string "pick_s3", null: false
    t.string "pick_s4", null: false
    t.string "pick_f1", null: false
    t.string "pick_f2", null: false
    t.string "pick_winner", null: false
    t.string "pick_third", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "in_pool", default: true
  end

  create_table "scorecards", force: :cascade do |t|
    t.string "pick_1"
    t.string "pick_2"
    t.string "pick_3"
    t.string "pick_4"
    t.string "pick_5"
    t.string "pick_6"
    t.string "pick_7"
    t.string "pick_8"
    t.string "pick_9"
    t.string "pick_10"
    t.string "pick_11"
    t.string "pick_12"
    t.string "pick_13"
    t.string "pick_14"
    t.string "pick_15"
    t.string "pick_16"
    t.string "pick_q1"
    t.string "pick_q2"
    t.string "pick_q3"
    t.string "pick_q4"
    t.string "pick_q5"
    t.string "pick_q6"
    t.string "pick_q7"
    t.string "pick_q8"
    t.string "pick_s1"
    t.string "pick_s2"
    t.string "pick_s3"
    t.string "pick_s4"
    t.string "pick_f1"
    t.string "pick_f2"
    t.string "pick_winner"
    t.string "pick_third"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "eliminated", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
