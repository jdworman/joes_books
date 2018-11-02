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

ActiveRecord::Schema.define(version: 2018_11_01_200503) do

  create_table "author_books", force: :cascade do |t|
    t.integer "authors_id"
    t.integer "books_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authors_id"], name: "index_author_books_on_authors_id"
    t.index ["books_id"], name: "index_author_books_on_books_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_name", "last_name"], name: "index_authors_on_first_name_and_last_name", unique: true
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.date "release_date"
    t.float "base_price"
    t.integer "format_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["format_id"], name: "index_books_on_format_id"
  end

  create_table "formats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
