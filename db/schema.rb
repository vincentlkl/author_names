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

ActiveRecord::Schema.define(version: 20150519081603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "answers", force: :cascade do |t|
    t.integer  "questionnaire_id"
    t.hstore   "questions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["questionnaire_id"], name: "index_answers_on_questionnaire_id", using: :btree
  add_index "answers", ["questions"], name: "index_answers_on_questions", using: :btree

  create_table "institution_roles", force: :cascade do |t|
    t.integer  "institution_id"
    t.integer  "user_id"
    t.integer  "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institution_roles", ["institution_id"], name: "index_institution_roles_on_institution_id", using: :btree
  add_index "institution_roles", ["user_id"], name: "index_institution_roles_on_user_id", using: :btree

  create_table "institutions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "contact_name"
    t.string   "phone"
    t.string   "email"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.string   "website"
    t.string   "logo"
    t.string   "company_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questionnaire_links", force: :cascade do |t|
    t.integer  "questionnaire_id"
    t.integer  "question_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questionnaire_links", ["question_id"], name: "index_questionnaire_links_on_question_id", using: :btree
  add_index "questionnaire_links", ["questionnaire_id"], name: "index_questionnaire_links_on_questionnaire_id", using: :btree

  create_table "questionnaires", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "institution_id"
  end

  add_index "questionnaires", ["institution_id"], name: "index_questionnaires_on_institution_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "name"
    t.string   "question_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "institution_id"
  end

  add_index "questions", ["institution_id"], name: "index_questions_on_institution_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
