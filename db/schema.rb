# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160601011123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forms", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.text     "description"
    t.text     "hobbies"
    t.string   "bad_habbits", null: false
    t.string   "living",      null: false
    t.string   "target",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "forms", ["user_id"], name: "index_forms_on_user_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.integer  "reciever_id",  null: false
    t.integer  "sender_id",    null: false
    t.datetime "time",         null: false
    t.text     "message_text", null: false
    t.boolean  "unread"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "messages", ["reciever_id"], name: "index_messages_on_reciever_id", using: :btree
  add_index "messages", ["sender_id", "reciever_id", "time"], name: "index_messages_on_sender_id_and_reciever_id_and_time", unique: true, using: :btree
  add_index "messages", ["sender_id"], name: "index_messages_on_sender_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.integer  "user_id",      null: false
    t.string   "service_type", null: false
    t.integer  "price",        null: false
    t.datetime "time",         null: false
    t.integer  "validity",     null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "payments", ["user_id", "service_type", "time"], name: "index_payments_on_user_id_and_service_type_and_time", unique: true, using: :btree
  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "recievers", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "recievers", ["user_id"], name: "index_recievers_on_user_id", using: :btree

  create_table "senders", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "senders", ["user_id"], name: "index_senders_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "login",         null: false
    t.string   "name",          null: false
    t.string   "password",      null: false
    t.string   "sex",           null: false
    t.date     "bithday",       null: false
    t.string   "country",       null: false
    t.string   "city",          null: false
    t.string   "email",         null: false
    t.datetime "last_login_in"
    t.integer  "rang"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "users", ["login"], name: "index_users_on_login", unique: true, using: :btree

  add_foreign_key "forms", "users"
  add_foreign_key "messages", "recievers"
  add_foreign_key "messages", "senders"
  add_foreign_key "payments", "users"
  add_foreign_key "recievers", "users"
  add_foreign_key "senders", "users"
end
