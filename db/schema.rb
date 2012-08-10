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

ActiveRecord::Schema.define(:version => 20120804004347) do

  create_table "nyc_gov_excel_webfiles", :force => true do |t|
    t.string   "type"
    t.date     "date_base"
    t.text     "full_url"
    t.boolean  "processed"
    t.boolean  "broadway_test"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "permit_details", :force => true do |t|
    t.integer  "permit_id"
    t.string   "type"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "city_owned_boolean"
    t.string   "other_boolean"
    t.string   "professional_certification_boolean"
    t.date     "approved_date"
    t.date     "assigned_date"
    t.date     "first_permit_date"
    t.date     "fully_filed_date"
    t.date     "fully_paid_date"
    t.date     "fully_permitted_date"
    t.date     "latest_action_date"
    t.date     "paid_date"
    t.date     "plan_assigned_date"
    t.date     "pre_filing_date"
    t.float    "initial_cost_decimal"
    t.float    "total_estimated_fee_decimal"
    t.float    "applicant_license_integer"
    t.float    "job_document_integer"
    t.float    "job_integer"
    t.string   "applicant_first_and_last_name"
    t.string   "applicant_professional_title"
    t.string   "applicants_first_and_last_name"
    t.string   "fee_status"
    t.string   "job_status"
    t.string   "job_kind"
    t.string   "zoning_district_1"
    t.string   "zoning_district_2"
    t.string   "zoning_district_3"
    t.text     "job_description"
    t.text     "other_description"
    t.hstore   "more_permit_detail"
    t.hstore   "spreadsheet_overflow_data"
    t.date     "date_base"
    t.float    "bin_integer"
    t.string   "borough"
    t.float    "community_board_integer"
    t.float    "property_block_integer"
    t.float    "property_lot_integer"
    t.string   "property_house_number"
    t.string   "property_street_name"
    t.string   "property_zip_code"
    t.string   "source"
    t.integer  "property_id"
  end

  add_index "permit_details", ["more_permit_detail"], :name => "permit_details_gin_more_permit_detail"
  add_index "permit_details", ["permit_id"], :name => "index_permit_details_on_permit_id"
  add_index "permit_details", ["spreadsheet_overflow_data"], :name => "permit_details_gin_spreadsheet_overflow_data"

  create_table "permits", :force => true do |t|
    t.integer  "property_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "acts_as_superintendent_boolean"
    t.date     "expiration_date"
    t.date     "filing_date"
    t.string   "filing_status"
    t.string   "home_improvement_contractor_license"
    t.date     "issuance_date"
    t.string   "job_document_number"
    t.float    "job_integer"
    t.date     "job_start_date"
    t.string   "job_kind"
    t.string   "non_profit_boolean"
    t.string   "oil_gas"
    t.float    "permit_sequence_integer"
    t.string   "permit_status"
    t.string   "permit_subtype"
    t.string   "permittees_business_name"
    t.string   "permittees_first_and_last_name"
    t.float    "permittees_license_integer"
    t.string   "permittees_license_kind"
    t.string   "permittees_other_title"
    t.string   "permittees_phone_number"
    t.string   "permit_kind"
    t.string   "residential_boolean"
    t.string   "self_cert_boolean"
    t.string   "site_fill"
    t.string   "site_safety_manager_business_name"
    t.string   "site_safety_managers_name"
    t.string   "superintendent_business_name"
    t.string   "superintendent_first_and_last_name"
    t.string   "work_kind"
    t.hstore   "spreadsheet_overflow_data"
    t.date     "date_base"
    t.float    "bin_integer"
    t.string   "borough"
    t.float    "community_board_integer"
    t.float    "property_block_integer"
    t.float    "property_lot_integer"
    t.string   "property_house_number"
    t.string   "property_street_name"
    t.string   "property_zip_code"
    t.string   "source"
  end

  add_index "permits", ["property_id"], :name => "index_permits_on_property_id"
  add_index "permits", ["spreadsheet_overflow_data"], :name => "permits_gin_spreadsheet_overflow_data"

  create_table "properties", :force => true do |t|
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.float    "bin_integer"
    t.string   "borough"
    t.float    "building_kind_integer"
    t.float    "community_board_integer"
    t.string   "owners_business_name"
    t.string   "owners_business_type"
    t.string   "owners_city_state_zip"
    t.string   "owners_first_and_last_name"
    t.string   "owners_house_street"
    t.string   "owners_phone_number"
    t.float    "property_block_integer"
    t.float    "property_lot_integer"
    t.string   "property_house_number"
    t.string   "property_street_name"
    t.string   "property_zip_code"
    t.string   "special_district_name_0"
    t.string   "special_district_name_1"
    t.string   "special_district_name_2"
    t.date     "date_base"
  end

  create_table "xref_titles", :force => true do |t|
    t.string   "computed_key"
    t.string   "subsitute_key"
    t.string   "key_source"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
