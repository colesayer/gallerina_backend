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

ActiveRecord::Schema.define(version: 20171205192723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artwork_galleries", force: :cascade do |t|
    t.integer "artwork_id"
    t.integer "gallery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artworks", force: :cascade do |t|
    t.integer "user_id"
    t.string "artist"
    t.string "title"
    t.string "date"
    t.string "materials"
    t.string "image_url"
    t.integer "dim_x"
    t.integer "dim_y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.integer "user_id"
    t.string "gallery_name"
    t.integer "dim_x"
    t.integer "dim_y"
    t.integer "dim_z"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "floor_texture"
    t.string "wall_color"
  end

  create_table "scene_artworks", force: :cascade do |t|
    t.integer "scene_id"
    t.integer "artwork_id"
    t.decimal "position_x"
    t.decimal "position_y"
    t.decimal "position_z"
  end

  create_table "scenes", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "gallery_id"
    t.text "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "last_login"
  end

end
