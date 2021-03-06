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

ActiveRecord::Schema.define(version: 20180524055228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accident_contracts", force: :cascade do |t|
    t.bigint "accident_id"
    t.string "first_name"
    t.string "last_name"
    t.string "contract_type"
    t.string "age"
    t.string "gender"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accident_id"], name: "index_accident_contracts_on_accident_id"
  end

  create_table "accidents", force: :cascade do |t|
    t.integer "min_age"
    t.integer "max_age"
    t.string "family"
    t.string "contract_type"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "autos", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "email"
    t.string "ownerType"
    t.string "autoBrand"
    t.string "autoModel"
    t.string "autoFeatures", default: [], array: true
    t.string "autoCity"
    t.string "ownerDUI"
    t.string "ownerDOB"
    t.string "ownerNIT"
    t.string "ownerGender"
    t.string "ownerOccupation"
    t.string "ownerPhone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string "company"
    t.integer "damageToThirdParties"
    t.integer "partialLoss"
    t.integer "totalLoss"
    t.string "coverage"
    t.string "benefits"
    t.integer "annualCost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coverages", force: :cascade do |t|
    t.string "coverage_type"
    t.integer "amount"
    t.integer "deductible"
    t.boolean "important"
    t.bigint "accident_id"
    t.bigint "health_contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accident_id"], name: "index_coverages_on_accident_id"
    t.index ["health_contract_id"], name: "index_coverages_on_health_contract_id"
  end

  create_table "health_contracts", force: :cascade do |t|
    t.integer "min_age"
    t.integer "max_age"
    t.string "company"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health_requests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "gender"
    t.string "email"
    t.string "phone_number"
    t.bigint "health_contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "dental"
    t.boolean "global"
    t.boolean "life"
    t.index ["health_contract_id"], name: "index_health_requests_on_health_contract_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "plan_type"
    t.integer "annual_installments"
    t.integer "amount_cents"
    t.integer "annual_amount_cents"
    t.bigint "accident_id"
    t.bigint "health_contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accident_id"], name: "index_plans_on_accident_id"
    t.index ["health_contract_id"], name: "index_plans_on_health_contract_id"
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
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accident_contracts", "accidents"
  add_foreign_key "coverages", "accidents"
  add_foreign_key "coverages", "health_contracts"
  add_foreign_key "health_requests", "health_contracts"
  add_foreign_key "plans", "accidents"
  add_foreign_key "plans", "health_contracts"
end
