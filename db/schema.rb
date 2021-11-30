# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_30_015022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.string "date"
    t.integer "mode", default: 0
    t.text "note"
    t.integer "rating"
    t.boolean "in_session", default: true
    t.bigint "user_id", null: false
    t.bigint "counselor_id", null: false
    t.boolean "emergency"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "counselor_read", default: false
    t.boolean "student_read", default: false
    t.boolean "suggested", default: false
    t.index ["counselor_id"], name: "index_bookings_on_counselor_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "counselors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.bigint "school_id", null: false
    t.index ["email"], name: "index_counselors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_counselors_on_reset_password_token", unique: true
    t.index ["school_id"], name: "index_counselors_on_school_id"
  end

  create_table "daily_emotions", force: :cascade do |t|
    t.datetime "date"
    t.bigint "user_id", null: false
    t.integer "emotion", default: 0
    t.index ["user_id"], name: "index_daily_emotions_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.integer "booking_id"
    t.integer "sender_id"
    t.string "sender_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "address"
    t.bigint "school_id", null: false
    t.string "classroom"
    t.integer "grade"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["school_id"], name: "index_users_on_school_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookings", "counselors"
  add_foreign_key "bookings", "users"
  add_foreign_key "counselors", "schools"
  add_foreign_key "daily_emotions", "users"
  add_foreign_key "users", "schools"
end
