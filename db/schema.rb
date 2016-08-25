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

ActiveRecord::Schema.define(version: 20160825145117) do

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

  create_table "phase1s", force: true do |t|
    t.string   "mobileFriendly"
    t.string   "wwwOrNot"
    t.string   "napFormat"
    t.string   "robotsTXT"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phase2s", force: true do |t|
    t.string   "seoFriendly"
    t.string   "copyHasKeywords"
    t.string   "freshContent"
    t.string   "imagesNamed"
    t.string   "blackHatFree"
    t.string   "goodLoading"
    t.string   "socialMedia"
    t.string   "webcrawlerFirendly"
    t.string   "googleAnalytics"
    t.string   "webmasterTools"
    t.string   "localBusiness"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phase3s", force: true do |t|
    t.string   "xmlSitemap"
    t.string   "visitorSitemap"
    t.string   "internalAudit"
    t.string   "externalAudit"
    t.string   "contactForm"
    t.string   "map"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_id"
  end

end
