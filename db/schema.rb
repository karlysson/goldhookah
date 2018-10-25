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

ActiveRecord::Schema.define(version: 20181025202505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "client_events", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "client_id"
    t.integer  "payment_method_id"
    t.integer  "ticket_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["client_id"], name: "index_client_events_on_client_id", using: :btree
    t.index ["event_id"], name: "index_client_events_on_event_id", using: :btree
    t.index ["payment_method_id"], name: "index_client_events_on_payment_method_id", using: :btree
    t.index ["ticket_id"], name: "index_client_events_on_ticket_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "phone"
    t.string   "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "birth"
    t.string   "blocked"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "description"
    t.string   "value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "client_events", "clients"
  add_foreign_key "client_events", "events"
  add_foreign_key "client_events", "payment_methods"
  add_foreign_key "client_events", "tickets"
end
