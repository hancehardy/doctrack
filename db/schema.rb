# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_24_032701) do

  create_table "contracts", force: :cascade do |t|
    t.integer "job_number"
    t.string "job_name"
    t.decimal "job_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "contract_status", default: false
    t.integer "milestone_1_id"
    t.datetime "milestone_1_date"
    t.boolean "milestone_1_complete", default: false
    t.integer "milestone_2_id"
    t.datetime "milestone_2_date"
    t.boolean "milestone_2_complete", default: false
    t.integer "milestone_3_id"
    t.datetime "milestone_3_date"
    t.boolean "milestone_3_complete", default: false
    t.integer "milestone_4_id"
    t.datetime "milestone_4_date"
    t.boolean "milestone_4_complete", default: false
    t.integer "salesman_id"
    t.integer "referral_id"
    t.float "total_commission"
    t.float "deposit_commission"
    t.datetime "deposit_date"
    t.float "final_commission"
    t.datetime "final_commission_date"
    t.float "commission_balance"
    t.float "referral_commission_paid"
    t.datetime "referral_commission_paid_date"
    t.float "referral_amount"
    t.float "referral_due"
  end

  create_table "referrals", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.float "referral_commission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "salesmen", force: :cascade do |t|
    t.string "full_name"
    t.float "sales_commission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
