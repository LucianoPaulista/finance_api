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

ActiveRecord::Schema.define(version: 2021_08_26_090148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "zip_code"
    t.string "address_number"
    t.string "complement"
    t.string "state"
    t.string "city"
    t.string "neighborhood"
    t.bigint "participant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["participant_id"], name: "index_addresses_on_participant_id"
  end

  create_table "installments", force: :cascade do |t|
    t.string "sequence"
    t.float "value"
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_installments_on_invoice_id"
  end

  create_table "invoice_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.date "issuance_date"
    t.string "observation"
    t.float "total_invoice"
    t.bigint "participant_id", null: false
    t.bigint "invoice_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_type_id"], name: "index_invoices_on_invoice_type_id"
    t.index ["participant_id"], name: "index_invoices_on_participant_id"
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "low_installments", force: :cascade do |t|
    t.date "low_date"
    t.float "value"
    t.bigint "installment_id", null: false
    t.bigint "low_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["installment_id"], name: "index_low_installments_on_installment_id"
    t.index ["low_type_id"], name: "index_low_installments_on_low_type_id"
  end

  create_table "low_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "installments", "invoices"
  add_foreign_key "invoices", "invoice_types"
  add_foreign_key "invoices", "participants"
  add_foreign_key "low_installments", "installments"
  add_foreign_key "low_installments", "low_types"
end
