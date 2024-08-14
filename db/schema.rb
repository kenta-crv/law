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

ActiveRecord::Schema.define(version: 2024_05_08_052827) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "columns", force: :cascade do |t|
    t.string "title"
    t.string "kategory"
    t.string "description"
    t.string "heading_1"
    t.string "file_1"
    t.text "content_1"
    t.string "heading_2"
    t.string "file_2"
    t.text "content_2"
    t.string "heading_3"
    t.string "file_3"
    t.text "content_3"
    t.string "heading_4"
    t.string "file_4"
    t.text "content_4"
    t.string "heading_5"
    t.string "file_5"
    t.text "content_5"
    t.string "heading_6"
    t.string "file_6"
    t.text "content_6"
    t.string "heading_7"
    t.string "file_7"
    t.text "content_7"
    t.string "heading_8"
    t.string "file_8"
    t.text "content_8"
    t.string "heading_9"
    t.string "file_9"
    t.text "content_9"
    t.string "heading_10"
    t.string "file_10"
    t.text "content_10"
    t.string "heading_11"
    t.string "file_11"
    t.string "content_11"
    t.string "heading_12"
    t.string "file_12"
    t.string "content_12"
    t.string "heading_13"
    t.string "file_13"
    t.string "content_13"
    t.string "heading_14"
    t.string "file_14"
    t.string "content_14"
    t.string "heading_15"
    t.string "file_15"
    t.string "content_15"
    t.string "heading_16"
    t.string "file_16"
    t.string "content_16"
    t.string "heading_17"
    t.string "file_17"
    t.string "content_17"
    t.string "heading_18"
    t.string "file_18"
    t.string "content_18"
    t.string "heading_19"
    t.string "file_19"
    t.string "content_19"
    t.string "heading_20"
    t.string "file_20"
    t.string "content_20"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "contract_id", null: false
    t.string "status"
    t.datetime "next"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_comments_on_contract_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "company"
    t.string "name"
    t.string "tel"
    t.string "email"
    t.string "address"
    t.string "period"
    t.string "message"
    t.string "initial_cost"
    t.string "contract_period"
    t.string "unit_price"
    t.string "maximum_number"
    t.string "approach_area"
    t.string "approach_industry"
    t.string "post_title"
    t.string "president_name"
    t.string "agree"
    t.string "contract_date"
    t.string "start_day"
    t.string "business"
    t.string "service"
    t.string "hope_start"
    t.string "hope_count"
    t.string "meeting"
    t.string "thought"
    t.string "remarks"
    t.string "report"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scripts", force: :cascade do |t|
    t.integer "contract_id", null: false
    t.string "sales_manager"
    t.string "contact_number"
    t.string "infomation"
    t.string "hearing_1"
    t.string "hearing_2"
    t.string "hearing_3"
    t.string "question_1"
    t.string "answer_1"
    t.string "question_2"
    t.string "answer_2"
    t.string "question_3"
    t.string "answer_3"
    t.string "question_4"
    t.string "answer_4"
    t.string "question_5"
    t.string "answer_5"
    t.string "question_6"
    t.string "answer_6"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_scripts_on_contract_id"
  end

end
