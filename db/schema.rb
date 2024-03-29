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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111018231508) do

  create_table "environments", :force => true do |t|
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "environments_languages", :force => true do |t|
    t.integer "environment_id"
    t.integer "language_id"
  end

  create_table "languages", :force => true do |t|
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages_projects", :force => true do |t|
    t.integer "language_id"
    t.integer "project_id"
  end

  create_table "projects", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.text     "body"
    t.integer  "environment_id"
  end

  create_table "tags", :force => true do |t|
    t.string   "key"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
