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

ActiveRecord::Schema.define(version: 20170330152339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.decimal "apr", precision: 10, scale: 6
    t.decimal "apy", precision: 10, scale: 6
    t.text "account_number"
    t.decimal "available_balance", precision: 14, scale: 2
    t.decimal "available_credit"
    t.decimal "balance", precision: 14, scale: 2
    t.decimal "credit_limit", precision: 10, scale: 2
    t.integer "day_payment_is_due"
    t.text "guid"
    t.text "institution_code"
    t.decimal "interest_rate", precision: 10, scale: 6
    t.boolean "is_closed"
    t.decimal "last_payment", precision: 10, scale: 6
    t.datetime "last_payment_at"
    t.datetime "matures_on"
    t.text "member_guid"
    t.decimal "minimum_balance", precision: 14, scale: 2
    t.decimal "minimum_payment", precision: 10, scale: 2
    t.text "name"
    t.decimal "original_balance", precision: 14, scale: 2
    t.datetime "payment_due_at"
    t.decimal "payoff_balance", precision: 14, scale: 2
    t.text "routing_number"
    t.datetime "started_on"
    t.text "subtype"
    t.decimal "total_account_value", precision: 14, scale: 2
    t.text "type"
    t.text "user_guid"
    t.datetime "atrium_created_at"
    t.datetime "atrium_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.text "account_guid"
    t.decimal "amount", precision: 10, scale: 2
    t.text "category"
    t.text "check_number_string"
    t.text "description"
    t.text "guid"
    t.boolean "is_bill_pay"
    t.boolean "is_expense"
    t.boolean "is_fee"
    t.boolean "is_income"
    t.boolean "is_overdraft_fee"
    t.boolean "is_payroll_advance"
    t.decimal "latitude"
    t.decimal "longitude"
    t.text "member_guid"
    t.text "memo"
    t.integer "merchant_category_code"
    t.text "original_description"
    t.datetime "posted_at"
    t.text "status"
    t.text "top_level_category"
    t.datetime "transacted_at"
    t.text "type"
    t.text "user_guid"
    t.datetime "atrium_created_at"
    t.datetime "atrium_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_transactions_on_account_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "user_guid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "transactions", "accounts"
end
