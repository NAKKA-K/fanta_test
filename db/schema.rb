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

ActiveRecord::Schema.define(version: 2019_10_30_113701) do

  create_table "battle_logs", force: :cascade do |t|
    t.integer "score"
    t.integer "damage"
    t.integer "party_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["party_id"], name: "index_battle_logs_on_party_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "image_src"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parties", force: :cascade do |t|
    t.integer "user_id"
    t.integer "character1_id"
    t.integer "character2_id"
    t.integer "character3_id"
    t.integer "character4_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character1_id"], name: "index_parties_on_character1_id"
    t.index ["character2_id"], name: "index_parties_on_character2_id"
    t.index ["character3_id"], name: "index_parties_on_character3_id"
    t.index ["character4_id"], name: "index_parties_on_character4_id"
    t.index ["user_id"], name: "index_parties_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "permissions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
