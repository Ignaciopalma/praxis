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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160417234825) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.integer  "phone"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.boolean  "transferencia_bancaria"
    t.boolean  "pago_en_tienda"
    t.string   "email"
    t.string   "ciudad"
    t.integer  "page_id"
    t.integer  "variation_id"
    t.integer  "product_id"
  end

  add_index "orders", ["page_id"], name: "index_orders_on_page_id"
  add_index "orders", ["product_id"], name: "index_orders_on_product_id"
  add_index "orders", ["variation_id"], name: "index_orders_on_variation_id"

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.boolean  "transferencia_bancaria"
    t.boolean  "pago_en_tienda"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "order_id"
    t.integer  "page_id"
  end

  add_index "payment_methods", ["order_id"], name: "index_payment_methods_on_order_id"
  add_index "payment_methods", ["page_id"], name: "index_payment_methods_on_page_id"

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "variations", force: :cascade do |t|
    t.string   "type"
    t.integer  "cost"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "color"
    t.string   "size"
    t.string   "payment_method"
  end

end
