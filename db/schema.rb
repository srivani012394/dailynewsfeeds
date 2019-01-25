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

ActiveRecord::Schema.define(version: 2018_12_31_192129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hackernews_feeds", force: :cascade do |t|
    t.datetime "written_at"
    t.text "title"
    t.string "url"
    t.string "author"
    t.bigint "keyword_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hacker_story_id"
    t.index ["keyword_id"], name: "index_hackernews_feeds_on_keyword_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "name"
  end

  create_table "quora_posts", force: :cascade do |t|
    t.string "author"
    t.text "title"
    t.string "url"
    t.bigint "keyword_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["keyword_id"], name: "index_quora_posts_on_keyword_id"
  end

  create_table "reddit_feeds", force: :cascade do |t|
    t.bigint "keyword_id"
    t.datetime "written_at"
    t.string "sub_reddit_id"
    t.text "title"
    t.string "url"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["keyword_id"], name: "index_reddit_feeds_on_keyword_id"
  end

  create_table "seed_migration_data_migrations", id: :serial, force: :cascade do |t|
    t.string "version"
    t.integer "runtime"
    t.datetime "migrated_on"
  end

  create_table "user_keywords", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "keyword_id"
    t.index ["keyword_id"], name: "index_user_keywords_on_keyword_id"
    t.index ["user_id"], name: "index_user_keywords_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "last_feed_on", default: "2019-01-22"
    t.datetime "confirmed_at"
    t.string "confirmation_token"
  end

end
