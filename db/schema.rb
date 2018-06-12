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

ActiveRecord::Schema.define(version: 20180608043704) do

  create_table "active_illusts", force: :cascade do |t|
    t.string "a_illust_img_id"
    t.string "a_illust_name"
    t.string "advice"
    t.integer "a_value_clear"
    t.integer "a_value_match"
    t.integer "a_value_again"
    t.string "a_value_comment"
    t.integer "p_value_clear"
    t.integer "p_value_match"
    t.integer "p_value_again"
    t.string "p_value_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
  end

  create_table "alone_illusts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "size_id"
    t.string "al_illust_img_id"
    t.string "al_illust_name"
    t.string "al_illust_introduct"
    t.string "al_illust_attention"
    t.boolean "al_illust_limited_style_real", default: false, null: false
    t.boolean "al_illust_limited_style_abstract", default: false, null: false
    t.boolean "al_illust_limited_coating_line", default: false, null: false
    t.boolean "al_illust_limited_coating_cg", default: false, null: false
    t.boolean "al_illust_limited_motif_person", default: false, null: false
    t.boolean "al_illust_limited_motif_nature_outside", default: false, null: false
    t.boolean "al_illust_limited_advice_composition", default: false, null: false
    t.boolean "al_illust_limited_advice_drawing", default: false, null: false
    t.boolean "al_illust_appo_flg", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informations", force: :cascade do |t|
    t.integer "order_id"
    t.string "information"
    t.boolean "checked_flg", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "user_id"
    t.string "item_img_id"
    t.string "item_name"
    t.string "item_introduct"
    t.string "item_attention"
    t.boolean "item_limited_size_b4", default: false, null: false
    t.boolean "item_limited_size_a4", default: false, null: false
    t.boolean "item_limited_style_real", default: false, null: false
    t.boolean "item_limited_style_abstract", default: false, null: false
    t.boolean "item_limited_coating_line", default: false, null: false
    t.boolean "item_limited_coating_cg", default: false, null: false
    t.boolean "item_limited_motif_person", default: false, null: false
    t.boolean "item_limited_motif_nature_outside", default: false, null: false
    t.boolean "item_limited_advice_composition", default: false, null: false
    t.boolean "item_limited_advice_drawing", default: false, null: false
    t.boolean "item_appo_flg", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "item_id"
    t.integer "alone_illust_id"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "size_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "user_img_id"
    t.string "user_handle_name"
    t.string "user_introduct"
    t.integer "credit"
    t.string "bank"
    t.string "branch_office"
    t.integer "bank_account"
    t.boolean "f_appo_flg", default: true, null: false
    t.boolean "f_business_flg", default: true, null: false
    t.boolean "user_appo_flg", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
