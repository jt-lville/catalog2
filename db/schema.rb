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

ActiveRecord::Schema.define(:version => 20120731193249) do

  create_table "data_docs", :force => true do |t|
    t.string   "url"
    t.integer  "level"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "data_source_id"
  end

  create_table "data_notes", :force => true do |t|
    t.text     "text"
    t.string   "date"
    t.string   "user"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "data_source_id"
  end

  create_table "data_providers", :force => true do |t|
    t.string   "url"
    t.string   "email"
    t.string   "contact"
    t.string   "phone"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "data_source_id"
  end

  create_table "data_sources", :force => true do |t|
    t.text     "description"
    t.string   "coverage"
    t.string   "status"
    t.string   "frequency"
    t.datetime "history_start"
    t.datetime "history_end"
    t.datetime "sample_start"
    t.datetime "sample_end"
    t.decimal  "cost_amount"
    t.string   "cost_frequency"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "data_provider_id"
    t.integer  "data_type_id"
  end

  create_table "data_stores", :force => true do |t|
    t.string   "type_name"
    t.string   "location"
    t.string   "access_method"
    t.string   "owner"
    t.integer  "data_source_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "data_types", :force => true do |t|
    t.text     "description"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "data_source_id"
  end

end
