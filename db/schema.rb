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

ActiveRecord::Schema.define(version: 20180104165855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.string "header"
    t.string "subheader"
    t.string "email"
    t.string "website"
    t.string "telephone"
    t.string "sex"
    t.string "address"
    t.string "githublink"
    t.string "age"
    t.string "twitter"
    t.string "facebook"
    t.text "objectives"
    t.text "experience"
    t.text "keyskill"
    t.text "education"
    t.text "hobby"
    t.text "referee"
    t.text "project"
    t.text "otherskill"
    t.integer "layout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "publish"
    t.text "interest"
    t.text "language"
    t.text "experience2"
    t.text "experience3"
    t.text "experience4"
    t.text "experience5"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "user_id"
    t.string "expdate1"
    t.string "expdate2"
    t.string "expdate3"
    t.string "expdate4"
    t.string "expdate5"
    t.string "expdate6"
    t.string "expdate7"
    t.string "exphead1"
    t.string "exphead2"
    t.string "exphead3"
    t.string "exphead4"
    t.string "exphead5"
    t.string "exphead6"
    t.string "exphead7"
    t.string "expsubhead1"
    t.string "expsubhead2"
    t.string "expsubhead3"
    t.string "expsubhead4"
    t.string "expsubhead5"
    t.string "expsubhead6"
    t.string "expsubhead7"
    t.text "experience6"
    t.text "experience7"
    t.string "techskill1"
    t.string "techskill2"
    t.string "techskill3"
    t.string "techskill4"
    t.string "techskill5"
    t.string "techskill6"
    t.string "techskill7"
    t.string "techskill8"
    t.string "techskill9"
    t.string "techskill10"
    t.string "techskill11"
    t.string "techskill12"
    t.string "techskill13"
    t.string "techskill14"
    t.string "techskill15"
    t.string "techskill16"
    t.string "techskill17"
    t.string "techskill18"
    t.string "techskill19"
    t.string "techskill20"
    t.string "techskill21"
    t.string "techskill22"
    t.string "techskill23"
    t.string "techskill24"
    t.string "techskill25"
    t.string "techskill26"
    t.text "skill01"
    t.text "skill02"
    t.text "skill03"
    t.text "skill04"
    t.text "skill05"
    t.text "skill06"
    t.text "skill07"
    t.text "skill08"
    t.string "label1"
    t.string "label2"
    t.string "label3"
    t.string "label4"
    t.string "label5"
    t.string "label6"
    t.string "label7"
    t.string "label8"
    t.text "education2"
    t.text "education3"
    t.text "education4"
    t.text "education5"
    t.text "education6"
    t.text "education7"
    t.text "referee2"
    t.text "referee3"
    t.text "referee4"
    t.text "referee5"
    t.text "school"
    t.text "school2"
    t.text "school3"
    t.text "school4"
    t.text "school5"
    t.text "school6"
    t.text "school7"
  end

  create_table "impressions", force: :cascade do |t|
    t.string "impressionable_type"
    t.integer "impressionable_id"
    t.integer "user_id"
    t.string "controller_name"
    t.string "action_name"
    t.string "view_name"
    t.string "request_hash"
    t.string "ip_address"
    t.string "session_hash"
    t.text "message"
    t.text "referrer"
    t.text "params"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
