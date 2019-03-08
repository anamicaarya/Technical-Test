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

ActiveRecord::Schema.define(version: 20190308121151) do

  create_table "datasets", force: :cascade do |t|
    t.string "title"
    t.string "file_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "title"
    t.boolean "selected", default: true
    t.string "data_type"
    t.integer "Dataset_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Dataset_id"], name: "index_properties_on_Dataset_id"
  end

end
