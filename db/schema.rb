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

ActiveRecord::Schema.define(version: 2020_03_31_162908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ballots", force: :cascade do |t|
    t.string "voter_name"
    t.string "selections", null: false
    t.string "notes"
    t.datetime "expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "election_id"
    t.index ["election_id"], name: "index_ballots_on_election_id"
  end

  create_table "choices", force: :cascade do |t|
    t.string "title", null: false
    t.string "description"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "election_id"
    t.index ["election_id"], name: "index_choices_on_election_id"
  end

  create_table "elections", force: :cascade do |t|
    t.boolean "is_profile"
    t.boolean "has_previews"
    t.string "noms_opts"
    t.string "voter_opts"
    t.string "privacy_opts"
    t.datetime "close_time"
    t.string "group"
    t.string "name"
    t.string "description"
    t.string "voting_method"
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_elections_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "ballots", "elections"
  add_foreign_key "choices", "elections"
  add_foreign_key "elections", "users"
  add_foreign_key "examples", "users"
end
