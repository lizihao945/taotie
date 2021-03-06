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

ActiveRecord::Schema.define(:version => 20140108080601) do

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "food_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["food_id"], :name => "index_comments_on_food_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "cook_steps", :force => true do |t|
    t.integer  "cookbook_id"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "cook_steps", ["cookbook_id"], :name => "index_cook_steps_on_cookbook_id"

  create_table "cookbook_comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "cookbook_id"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "cookbook_comments", ["cookbook_id"], :name => "index_cookbook_comments_on_cookbook_id"
  add_index "cookbook_comments", ["user_id"], :name => "index_cookbook_comments_on_user_id"

  create_table "cookbook_likes", :force => true do |t|
    t.integer  "cookbook_id"
    t.integer  "count",       :default => 0
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "cookbook_likes", ["cookbook_id"], :name => "index_cookbook_likes_on_cookbook_id"

  create_table "cookbooks", :force => true do |t|
    t.integer  "user_id"
    t.integer  "difficulty_level"
    t.integer  "time_level"
    t.string   "description"
    t.string   "tips"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "food_id"
  end

  create_table "food_categories", :force => true do |t|
    t.string "name"
  end

  create_table "food_food_categoryships", :force => true do |t|
    t.integer "food_id"
    t.integer "food_category_id"
  end

  create_table "foods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "description",  :default => ""
    t.string   "image_url",    :default => ""
    t.integer  "main_user_id"
    t.text     "detail",       :default => ""
  end

  add_index "foods", ["main_user_id"], :name => "index_foods_on_main_user_id"

  create_table "likes", :force => true do |t|
    t.integer  "food_id"
    t.integer  "count"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "likes", ["food_id"], :name => "index_likes_on_food_id"

  create_table "materials", :force => true do |t|
    t.integer  "cookbook_id"
    t.string   "name"
    t.integer  "quantity"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "materials", ["cookbook_id"], :name => "index_materials_on_cookbook_id"

  create_table "menu_cookbookships", :force => true do |t|
    t.integer  "menu_id"
    t.integer  "cookbook_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "menus", ["user_id"], :name => "index_menus_on_user_id"

  create_table "restaurant_foodships", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "food_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image_url"
  end

  add_index "restaurants", ["user_id"], :name => "index_restaurants_on_user_id"

  create_table "user_cookbook_likeships", :force => true do |t|
    t.integer  "cookbook_like_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "user_foodships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "food_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_likeships", :force => true do |t|
    t.integer  "like_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "image_url",   :default => ""
    t.string   "description"
  end

end
