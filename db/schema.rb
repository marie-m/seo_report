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

ActiveRecord::Schema.define(version: 20160913192413) do

  create_table "businesses", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "url"
    t.string   "vertical"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details", force: true do |t|
    t.string   "pageName"
    t.string   "pageTitle"
    t.text     "pageDescript"
    t.text     "h1Tags"
    t.text     "h2Tags"
    t.integer  "phase1_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headers", force: true do |t|
    t.string   "pageName"
    t.string   "pageTitle"
    t.text     "pageDescript"
    t.text     "h1Tags"
    t.text     "h2Tags"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "phase1_id"
  end

  add_index "headers", ["phase1_id"], name: "index_headers_on_phase1_id"

  create_table "phase1_pages", force: true do |t|
    t.string   "pageName"
    t.string   "title"
    t.text     "description"
    t.string   "h1tags"
    t.string   "h2tags"
    t.integer  "phase1_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phase1s", force: true do |t|
    t.string   "mobileFriendly"
    t.string   "wwwOrNot"
    t.string   "napFormat"
    t.string   "robotsTXT"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_id"
  end

  add_index "phase1s", ["business_id"], name: "index_phase1s_on_business_id"

  create_table "phase2s", force: true do |t|
    t.string   "copyHasKeywords"
    t.string   "freshContent"
    t.string   "imagesNamed"
    t.string   "socialMedia"
    t.string   "googleAnalytics"
    t.string   "webmasterTools"
    t.string   "localBusiness"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_id"
    t.string   "optimized"
    t.string   "shortURL"
    t.string   "blackHatFree"
    t.string   "titleHasKeywords"
  end

  add_index "phase2s", ["business_id"], name: "index_phase2s_on_business_id"

  create_table "phase3s", force: true do |t|
    t.string   "xmlSitemap"
    t.string   "visitorSitemap"
    t.string   "internalAudit"
    t.string   "contactForm"
    t.string   "map"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_id"
    t.string   "favicon"
    t.string   "flashFree"
    t.string   "conversionOp"
  end

  add_index "phase3s", ["business_id"], name: "index_phase3s_on_business_id"

end
