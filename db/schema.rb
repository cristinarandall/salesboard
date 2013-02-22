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

ActiveRecord::Schema.define(:version => 20130222045511) do

  create_table "access_tokens", :force => true do |t|
    t.integer  "user_id"
    t.string   "type",       :limit => 30
    t.string   "key"
    t.string   "token",      :limit => 1024
    t.string   "secret"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "access_tokens", ["key"], :name => "index_access_tokens_on_key", :unique => true

  create_table "announcements", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "api_consumers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "phone_number"
    t.string   "application_name"
    t.string   "application_description"
    t.string   "url"
    t.text     "description_use"
  end

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.string   "secret"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "app_tab"
  end

  create_table "bounce_rates", :force => true do |t|
    t.integer "company_id"
    t.integer "bounces"
    t.integer "visits"
    t.string  "browser"
    t.text    "page_path"
    t.integer "visit_length"
    t.integer "is_mobile"
    t.integer "screen_resolution_x"
    t.integer "screen_resolution_y"
    t.string  "source"
    t.date    "day"
  end

  create_table "cash_movements", :force => true do |t|
    t.string  "cashier"
    t.string  "folio"
    t.float   "value"
    t.string  "concept"
    t.string  "location"
    t.integer "company_id"
  end

  create_table "categories", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "es"
    t.string   "en"
    t.string   "icon"
    t.string   "icon_secondary"
    t.integer  "priority"
    t.integer  "second_priority"
  end

  create_table "cities", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
    t.string   "name"
    t.integer  "company_count"
  end

  create_table "clean_leads", :force => true do |t|
    t.string   "person_email"
    t.text     "company_name"
    t.integer  "company_id"
    t.integer  "emailed"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "colonias", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "state_id"
    t.integer  "city_id"
    t.string   "state_text",        :limit => 60
    t.string   "municipality_text", :limit => 100
    t.string   "city_text",         :limit => 100
    t.string   "codigo",            :limit => 10
  end

  create_table "comments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "feed_id"
    t.integer  "user_id"
    t.text     "message"
    t.string   "username"
    t.integer  "review_id"
  end

  create_table "companies", :force => true do |t|
    t.string   "company_site"
    t.string   "company_name"
    t.string   "company_postcode"
    t.string   "company_address"
    t.string   "company_state"
    t.string   "company_phone"
    t.string   "company_fax"
    t.string   "employee_number"
    t.string   "revenue"
    t.string   "company_ownership"
    t.text     "company_overview"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "colonia"
    t.string   "scian"
    t.text     "giro"
    t.string   "year_started"
    t.string   "company_city"
    t.string   "source"
    t.string   "views"
    t.text     "company_image"
    t.string   "person_first"
    t.string   "person_last"
    t.string   "person_number"
    t.string   "person_email"
    t.integer  "rating",                              :default => 0
    t.text     "review_text"
    t.text     "review_pic"
    t.text     "deal"
    t.integer  "review_number",                       :default => 0
    t.string   "microsite_color"
    t.string   "microsite_theme"
    t.string   "microsite_review"
    t.string   "microsite_image"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.string   "source_image"
    t.integer  "completion"
    t.string   "company_phone_bak"
    t.integer  "user_id"
    t.string   "url_name"
    t.string   "subdomain"
    t.text     "address"
    t.decimal  "lat"
    t.decimal  "lng"
    t.boolean  "published"
    t.string   "linked_in"
    t.string   "facebook"
    t.string   "twitter"
    t.text     "owner_message"
    t.string   "category_string"
    t.text     "secondary_address"
    t.string   "photo_remote_url"
    t.text     "thumbnail_url"
    t.string   "thumbnail_complete"
    t.integer  "ads",                 :limit => 2
    t.string   "category_giro"
    t.boolean  "has_image"
    t.integer  "content_id"
    t.string   "name_sanitized"
    t.tsvector "company_name_vector"
    t.integer  "image_count"
    t.text     "hours_string"
    t.integer  "user_views"
    t.integer  "recommends",                          :default => 0
    t.integer  "parent_id"
    t.string   "tags",                :limit => 500
    t.string   "historical_giro",     :limit => 1024
    t.string   "paid_keywords"
    t.string   "ref"
    t.integer  "review_user_id"
    t.string   "review_screen_name"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.string   "contributor_ids"
    t.string   "lada"
    t.string   "branch_name"
    t.string   "nextel"
    t.string   "country"
  end

  add_index "companies", ["address"], :name => "address_search_idx"
  add_index "companies", ["company_name_vector"], :name => "companies_company_name_search_idx"
  add_index "companies", ["has_image"], :name => "index_companies_on_has_image"
  add_index "companies", ["lat", "lng"], :name => "index_companies_on_lat_and_lng"
  add_index "companies", ["name_sanitized"], :name => "index_companies_name_sanitized"
  add_index "companies", ["parent_id"], :name => "index_companies_on_parent_id"
  add_index "companies", ["url_name"], :name => "url_name_search_idx"
  add_index "companies", ["user_id"], :name => "index_companies_on_user_id"

  create_table "company_locations", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "code"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.string   "giro"
    t.string   "colonia"
    t.string   "scian"
    t.string   "name"
    t.string   "site"
  end

  create_table "company_parents", :force => true do |t|
    t.string "name"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "customer_infos", :force => true do |t|
    t.string   "account_name"
    t.string   "account_number"
    t.string   "account_clabe"
    t.string   "bank_name"
    t.string   "rfc"
    t.text     "notes"
    t.integer  "company_id"
    t.string   "paypal_email"
    t.boolean  "paypal"
    t.boolean  "bank_transfer"
    t.string   "fiscal_company_name"
    t.string   "fiscal_rfc"
    t.string   "fiscal_address"
    t.string   "fiscal_city"
    t.string   "fiscal_state"
    t.string   "fiscal_postal_code"
    t.string   "fiscal_telefono"
    t.string   "dineromail_merchant"
    t.string   "dineromail_ipn_pass"
    t.boolean  "click_to_cart"
    t.boolean  "paid"
    t.date     "created_at"
    t.datetime "expiry_date"
    t.string   "payment_callback"
    t.boolean  "dineromail"
    t.boolean  "shipping_enabled"
    t.string   "shipping_type"
    t.string   "shipping_handling_rate"
    t.string   "shipping_flat_rate"
    t.boolean  "iba_bool"
    t.string   "fb_app_id"
    t.string   "google_analytics_id"
    t.string   "profile_id"
    t.string   "skype"
    t.string   "youtube"
    t.boolean  "ups_enabled"
    t.boolean  "nacional_express_saver"
    t.boolean  "exportation_express_saver"
    t.boolean  "exportation_expedited"
    t.boolean  "importacion_express_saver"
    t.boolean  "importacion_expedited"
    t.string   "ups_password"
    t.string   "ups_username"
    t.text     "ups_key"
    t.string   "ups_account"
    t.integer  "tax_rate"
    t.string   "olark"
    t.boolean  "temp_new_cart"
    t.boolean  "shipping_insurance"
    t.boolean  "shipping_included"
    t.boolean  "tax_included"
    t.boolean  "pequeno_contribuyente"
    t.boolean  "show_tax_in_price"
  end

  create_table "customer_page_translations", :force => true do |t|
    t.integer  "customer_page_id"
    t.string   "locale"
    t.string   "header_1"
    t.text     "content"
    t.string   "link_name"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "customer_page_translations", ["customer_page_id"], :name => "index_c1cf1dc3bcd953f923548cc8884e3252352cf2a7"
  add_index "customer_page_translations", ["locale"], :name => "index_customer_page_translations_on_locale"

  create_table "customer_pages", :force => true do |t|
    t.string   "header_1"
    t.text     "content"
    t.string   "link_name"
    t.integer  "company_id"
    t.integer  "priority"
    t.datetime "created_at"
  end

  create_table "deals", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "expiration"
    t.integer  "company_id"
    t.string   "image"
    t.string   "type"
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "queue"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "directories", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directory_caches", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "company_site"
    t.string   "company_name"
    t.string   "company_postcode"
    t.string   "company_address"
    t.string   "company_state"
    t.string   "company_phone"
    t.string   "company_fax"
    t.string   "employee_number"
    t.string   "revenue"
    t.string   "company_ownership"
    t.text     "company_overview"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "colonia"
    t.string   "scian"
    t.text     "giro"
    t.string   "year_started"
    t.string   "company_city"
    t.string   "source"
    t.string   "views"
    t.text     "company_image"
    t.string   "person_first"
    t.string   "person_last"
    t.string   "person_number"
    t.string   "person_email"
    t.integer  "rating"
    t.text     "review_text"
    t.text     "review_pic"
    t.text     "deal"
    t.integer  "review_number"
    t.string   "microsite_color"
    t.string   "microsite_theme"
    t.string   "microsite_review"
    t.string   "microsite_image"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.string   "source_image"
    t.integer  "completion"
    t.string   "company_phone_bak"
    t.integer  "user_id"
    t.string   "url_name"
    t.string   "subdomain"
    t.text     "address"
    t.decimal  "lat"
    t.decimal  "lng"
    t.boolean  "published"
    t.string   "linked_in"
    t.string   "facebook"
    t.string   "twitter"
    t.text     "owner_message"
    t.string   "category_string"
    t.text     "secondary_address"
    t.string   "photo_remote_url"
    t.text     "thumbnail_url"
    t.string   "thumbnail_complete"
    t.integer  "ads",                 :limit => 2
    t.string   "category_giro"
    t.boolean  "has_image"
    t.integer  "content_id"
    t.string   "name_sanitized"
    t.tsvector "company_name_vector"
    t.integer  "image_count"
    t.text     "hours_string"
    t.integer  "user_views"
    t.integer  "recommends"
    t.integer  "parent_id"
    t.string   "tags",                :limit => 500
    t.string   "historical_giro",     :limit => 1024
    t.string   "paid_keywords"
    t.string   "ref"
    t.integer  "review_user_id"
    t.string   "review_screen_name"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.string   "contributor_ids"
    t.string   "lada"
  end

  create_table "display_companies", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "displaycontacts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "displays", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_clickthrough_trackers", :force => true do |t|
    t.integer  "email_tracker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "landing_page"
    t.string   "ref"
  end

  create_table "email_leads", :id => false, :force => true do |t|
    t.integer "id"
    t.string  "person_email"
    t.integer "company_id"
    t.string  "company_name"
    t.string  "category"
    t.string  "company_address"
    t.string  "colonia"
    t.string  "company_city"
    t.string  "company_postcode"
    t.text    "description"
    t.text    "giro"
    t.string  "company_phone"
    t.string  "employee_count"
    t.string  "source"
    t.string  "website"
    t.boolean "blocked"
    t.integer "emailed"
  end

  create_table "email_open_trackers", :force => true do |t|
    t.integer  "email_tracker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_trackers", :force => true do |t|
    t.string   "ab_test"
    t.string   "notification_type"
    t.integer  "user_id"
    t.integer  "company_id"
    t.string   "company_name"
    t.string   "recipient_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "company_id"
    t.integer  "user_id"
    t.string   "image"
    t.string   "type"
    t.string   "event_title"
    t.string   "event_place"
    t.integer  "event_review_number"
    t.integer  "event_attendance_yes"
    t.text     "event_comment_update"
    t.string   "event_user_name"
    t.string   "event_user_image"
    t.string   "time_change"
    t.string   "event_image"
  end

  create_table "exchange_rates", :force => true do |t|
    t.integer "company_id"
    t.string  "currency_code"
    t.string  "currency_name"
    t.decimal "exchange_rate", :precision => 10, :scale => 2
  end

  create_table "facebook_graphs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "keyword_id"
    t.date     "count_date"
    t.integer  "company_id"
    t.string   "since_id"
  end

  create_table "facebook_monitors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facturas", :force => true do |t|
    t.integer  "company_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "customer_id"
    t.integer  "order_id"
    t.float    "value"
    t.string   "customer_name"
    t.string   "rfc"
    t.string   "folio"
  end

  create_table "featured_companies", :force => true do |t|
    t.string   "company_site"
    t.string   "company_name"
    t.string   "company_postcode"
    t.string   "company_address"
    t.string   "company_state"
    t.string   "company_phone"
    t.string   "company_fax"
    t.string   "employee_number"
    t.string   "revenue"
    t.string   "company_ownership"
    t.text     "company_overview"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "colonia"
    t.string   "scian"
    t.text     "giro"
    t.string   "year_started"
    t.string   "company_city"
    t.string   "source"
    t.string   "root"
    t.text     "company_image"
    t.string   "person_first"
    t.string   "person_last"
    t.string   "person_number"
    t.string   "person_email"
    t.integer  "rating"
    t.text     "review_text"
    t.string   "categories"
    t.text     "review_pic"
    t.text     "deal"
    t.integer  "review_number"
    t.string   "microsite_color"
    t.string   "microsite_theme"
    t.string   "microsite_review"
    t.string   "microsite_image"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.string   "subcategory"
    t.string   "source_image"
    t.integer  "completion"
    t.string   "company_phone_bak"
    t.integer  "user_id"
    t.integer  "premium"
    t.string   "subdomain"
    t.text     "address"
    t.decimal  "lat"
    t.decimal  "lng"
    t.boolean  "published"
    t.string   "linked_in"
    t.string   "facebook"
    t.string   "twitter"
    t.text     "owner_message"
    t.string   "category_string"
    t.text     "secondary_address"
    t.string   "photo_remote_url"
    t.string   "categorized"
    t.text     "thumbnail_url"
    t.string   "thumbnail_complete"
    t.integer  "ads",                    :limit => 2
    t.string   "category_giro"
    t.tsvector "giro_vector"
    t.tsvector "company_name_vector"
    t.boolean  "has_image"
    t.integer  "content_id"
    t.integer  "company_id"
    t.string   "name_sanitized"
    t.tsvector "location_search_vector"
  end

  add_index "featured_companies", ["company_name_vector"], :name => "company_name_search_featured_companies_idx"
  add_index "featured_companies", ["giro_vector"], :name => "giro_search_featured_companies_idx"
  add_index "featured_companies", ["lat", "lng"], :name => "lat_lng_featured_companies_idx"

  create_table "feed_entries", :force => true do |t|
    t.string   "name"
    t.text     "summary"
    t.string   "url"
    t.datetime "published_at"
    t.string   "guid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
    t.string   "categories"
  end

  create_table "feeds", :force => true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.string   "image"
    t.string   "city_name"
    t.string   "name"
    t.string   "category"
    t.integer  "rating",                  :default => 0
    t.integer  "review_number"
    t.text     "description"
    t.string   "deal_reg_price",          :default => "0"
    t.string   "deal_sale_price",         :default => "0"
    t.integer  "user_id"
    t.text     "deal_terms"
    t.string   "event_time"
    t.integer  "state_id"
    t.string   "screen_name"
    t.string   "event_image"
    t.string   "feed_image_file_name"
    t.string   "feed_image_content_type"
    t.integer  "feed_image_file_size"
    t.datetime "feed_image_updated_at"
    t.string   "state"
    t.string   "source"
    t.string   "url"
    t.string   "country"
    t.string   "feed_image_remote_url"
    t.string   "deal_address"
    t.string   "deal_company"
    t.string   "deal_savings",            :default => "0"
    t.datetime "key_date"
    t.integer  "visits"
    t.string   "map_string"
    t.integer  "category_id"
    t.float    "lat"
    t.float    "lng"
    t.integer  "company_reviews"
    t.integer  "points",                  :default => 0
    t.boolean  "spam"
    t.string   "defensio_sig"
    t.float    "spaminess"
    t.integer  "discount"
    t.string   "company_name"
    t.string   "company_state"
    t.string   "company_city"
    t.string   "colonia"
    t.string   "company_address"
    t.integer  "neg_points",              :default => 0
  end

  create_table "friend_connections", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "friend_id"
    t.integer  "active"
    t.integer  "user_id"
  end

  create_table "gallery_categories", :force => true do |t|
    t.integer "company_id"
    t.string  "name"
    t.string  "full_name"
    t.integer "parent_id"
  end

  create_table "goals", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.integer  "quantity"
  end

  create_table "homes", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "import_tasks", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imports", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inbound_prospects", :force => true do |t|
    t.string   "city"
    t.string   "ip"
    t.string   "region"
    t.string   "area_code"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "country_code3"
    t.string   "postal_code"
    t.string   "dma_code"
    t.string   "country_code"
    t.string   "country_name"
    t.string   "referral_string"
    t.string   "site"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industries", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "contact_id"
    t.integer  "company_id"
  end

  add_index "industries", ["company_id"], :name => "index_industries_on_company_id"

  create_table "invitations", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "recipient_email"
    t.string   "token"
    t.string   "sender_email"
  end

  create_table "items", :force => true do |t|
    t.string  "name"
    t.string  "options"
    t.string  "product_id"
    t.integer "quantity"
    t.integer "order_id"
    t.string  "sku"
    t.string  "product_option_id"
    t.float   "weight"
    t.decimal "price",             :precision => 10, :scale => 2
    t.integer "subscription_id"
  end

  create_table "keyword_graphs", :force => true do |t|
    t.date     "created_at"
    t.datetime "updated_at"
    t.integer  "count"
    t.integer  "keyword_id"
    t.string   "type"
    t.date     "count_date"
    t.integer  "company_id"
    t.integer  "since_id"
    t.string   "since"
    t.string   "since_string"
  end

  create_table "keyword_monitors", :force => true do |t|
    t.text     "post_content"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.integer  "keyword_id"
  end

  create_table "landings", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "languages", :force => true do |t|
    t.string  "name"
    t.string  "code"
    t.integer "company_id"
  end

  create_table "leads", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company_name"
    t.string   "person_name"
    t.string   "company_phone"
    t.string   "person_email"
    t.integer  "email_tracker_id"
    t.integer  "company_id"
    t.string   "company_site"
    t.integer  "emailed"
    t.string   "refer"
  end

  create_table "listings", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locales", :force => true do |t|
    t.integer "company_id"
    t.string  "country_code"
    t.string  "country_name"
    t.string  "currency_code"
    t.boolean "default"
    t.string  "language_code"
    t.string  "language_name"
    t.string  "locale_code"
  end

  create_table "mails", :force => true do |t|
    t.text     "body"
    t.string   "sender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "sender_id"
    t.string   "subject"
    t.text     "body"
    t.string   "sender_name"
    t.integer  "company_id"
    t.integer  "review_id"
    t.boolean  "read",         :default => false
    t.string   "sender_email"
    t.boolean  "sent"
    t.string   "email"
    t.string   "type"
  end

  create_table "news", :force => true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_categorizations", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_graphs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "keyword_id"
    t.date     "count_date"
  end

  create_table "office_locations", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "location"
    t.string   "name"
    t.integer  "manager_id"
  end

  create_table "operation_hours", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_custom_field_templates", :force => true do |t|
    t.integer "company_id"
    t.string  "name"
    t.text    "description"
  end

  create_table "order_custom_fields", :force => true do |t|
    t.integer "order_id"
    t.integer "order_custom_field_template_id"
    t.string  "name"
    t.string  "value"
    t.integer "subscription_id"
  end

  create_table "order_log_lines", :force => true do |t|
    t.string   "provider"
    t.string   "status"
    t.string   "transaction_id"
    t.integer  "order_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "company_id"
    t.integer  "user_id"
    t.string   "shipping_address"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.string   "shipping_postal_code"
    t.string   "billing_address"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_postal_code"
    t.string   "rfc"
    t.string   "company_name"
    t.string   "email"
    t.string   "phone"
    t.string   "user_screen_name"
    t.datetime "created_at"
    t.string   "billing_name"
    t.string   "shipping_name"
    t.string   "billing_colonia"
    t.string   "shipping_colonia"
    t.string   "status",                                                           :default => "Pendiente de Pago"
    t.string   "transaction_id"
    t.string   "payment_method"
    t.boolean  "temporary"
    t.decimal  "subtotal",                          :precision => 10, :scale => 2
    t.decimal  "tax",                               :precision => 10, :scale => 2
    t.decimal  "shipping_cost",                     :precision => 10, :scale => 2
    t.integer  "order_id",             :limit => 8
    t.integer  "customer_id"
    t.integer  "purchaser_user_id"
    t.integer  "purchaser_company_id"
    t.decimal  "total",                             :precision => 10, :scale => 2
    t.string   "shipping_method"
    t.datetime "updated_at"
    t.integer  "subscription_id"
    t.string   "shipping_country"
    t.string   "billing_country"
    t.string   "billing_company_name"
    t.string   "billing_email"
    t.string   "billing_phone"
    t.string   "billing_notorary"
    t.string   "tracking_id"
  end

  add_index "orders", ["status"], :name => "index_orders_on_status"

  create_table "page_grade_jobs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "page_grader_id"
    t.string   "event_id"
  end

  create_table "page_graders", :force => true do |t|
    t.string   "twitter"
    t.string   "facebook"
    t.string   "blog"
    t.string   "rss"
    t.string   "num_tweets"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url_count"
    t.integer  "company_id"
    t.string   "meta_title"
    t.string   "initial_date"
    t.string   "links_in_count"
    t.string   "external_links"
    t.string   "links"
    t.string   "mozrank"
    t.string   "domain_authority"
    t.string   "page_authority"
    t.integer  "competitor_id"
    t.string   "found"
    t.string   "result_count"
    t.integer  "text_ratio"
    t.string   "yahoo_result"
    t.string   "msn_result"
    t.string   "google_mx_result"
    t.string   "keywords"
    t.integer  "google_indexed"
    t.integer  "yahoo_indexed"
    t.integer  "msn_indexed"
    t.string   "moz"
    t.string   "yahoo_directory"
    t.string   "google_local"
    t.string   "google_analytics"
    t.string   "xml_sitemap"
    t.integer  "twitter_followers"
    t.integer  "twitter_following"
    t.integer  "twitter_rank"
    t.string   "last_google_check"
    t.string   "site"
    t.integer  "bing_indexed"
    t.string   "load_time"
    t.string   "flash"
    t.text     "page_links"
    t.text     "subdomain"
    t.string   "result_count_yahoo"
    t.string   "clout"
    t.string   "uniques"
    t.string   "visits"
    t.text     "meta_description"
    t.text     "meta_keywords"
    t.string   "engagement_score"
    t.string   "linking_score"
    t.string   "engagement_score_dist"
    t.string   "linking_score_dist"
    t.string   "total_moz"
    t.integer  "main_grader_id"
    t.string   "views_per_user"
    t.string   "categories"
  end

  create_table "permissions", :force => true do |t|
    t.boolean  "edit_design"
    t.boolean  "edit_orders"
    t.boolean  "see_orders"
    t.boolean  "edit_account_settings"
    t.boolean  "edit_products"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "user_id"
    t.boolean  "recieve_emails"
    t.boolean  "cashier"
    t.boolean  "sales_note"
    t.boolean  "reports"
  end

  create_table "photos", :force => true do |t|
    t.integer  "company_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "premia", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.text     "background_image"
    t.string   "color_scheme"
    t.string   "font_type"
    t.text     "text_1"
    t.text     "header_1"
    t.text     "text_2"
    t.text     "header_2"
    t.text     "text_3"
    t.text     "header_3"
    t.string   "thumbnail_h1"
    t.string   "thumbnail_text1"
    t.string   "thumbnail_h2"
    t.string   "thumbnail_text2"
    t.string   "thumbnail_h3"
    t.string   "thumbnail_text3"
    t.text     "video_url"
    t.string   "background_block"
    t.text     "catalog_header_1"
    t.text     "catalog_description_1"
    t.integer  "disable_price"
    t.text     "catalog_subheader_1"
    t.integer  "reserva"
    t.boolean  "background_repeat"
    t.string   "skype"
    t.string   "youtube"
    t.string   "custom_map_marker"
    t.string   "custom_map_marker_hover"
    t.float    "fb_app_id"
    t.string   "google_analytics_id"
    t.string   "profile_id"
    t.string   "pinterest"
  end

  create_table "premium_companies", :force => true do |t|
    t.integer "company_id"
    t.decimal "lng"
    t.decimal "lat"
    t.string  "stemmed_tags"
    t.string  "state"
    t.string  "subcity"
    t.string  "city"
    t.string  "district"
    t.string  "colonia"
    t.string  "location_terms"
  end

  create_table "premium_config_translations", :force => true do |t|
    t.integer  "premium_config_id"
    t.string   "locale"
    t.string   "seo_description"
    t.string   "seo_title"
    t.string   "seo_keywords"
    t.string   "galeria"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "premium_config_translations", ["locale"], :name => "index_premium_config_translations_on_locale"
  add_index "premium_config_translations", ["premium_config_id"], :name => "index_5909427a0c74ff11bffbb42a53e0af43f14fcdf1"

  create_table "premium_configs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "inicio",                   :default => "Inicio"
    t.string   "catalogo",                 :default => "Catálogo"
    t.string   "sobre_nosotros",           :default => "Sobre Nosotros"
    t.string   "galeria",                  :default => "Galería"
    t.integer  "company_id"
    t.integer  "store"
    t.string   "distributor_price"
    t.string   "seo_title"
    t.string   "seo_description"
    t.string   "seo_keywords"
    t.string   "domain"
    t.integer  "catalog_layout"
    t.integer  "list_layout"
    t.string   "landing"
    t.integer  "default_product_image_id"
    t.string   "contact_name"
    t.string   "product_sort"
    t.boolean  "prompt_for_signup"
  end

  create_table "premium_styles", :force => true do |t|
    t.string  "product_layout"
    t.string  "catalog_layout"
    t.integer "company_id"
    t.boolean "hide_products"
    t.text    "custom_css"
    t.integer "product_column_number"
    t.boolean "hide_buy_btn"
    t.boolean "hide_description"
    t.boolean "share_disable"
    t.string  "banner_height",             :default => "body.layout-3 { margin-top:-15px;}"
    t.string  "cart_type"
    t.string  "layout_4_header1"
    t.string  "layout_4_header2"
    t.string  "layout_4_header3"
    t.boolean "hide_paypal"
    t.string  "font_type_body"
    t.integer "header_font_size"
    t.integer "product_font_size"
    t.integer "product_padding"
    t.integer "product_margins"
    t.boolean "facepile_display"
    t.integer "navigation_link_font_size"
    t.integer "page_link_font_size"
    t.boolean "default_nav"
    t.integer "price_font_size"
    t.string  "header_color"
    t.string  "link_color"
    t.string  "product_name_color"
    t.string  "nav_bar_opacity"
    t.boolean "custom_design"
    t.boolean "hide_navigation_bar"
    t.boolean "hide_address"
    t.text    "favicon_url"
    t.integer "product_count_per_page"
    t.string  "page_link_color"
    t.string  "product_price_color"
    t.integer "show_inventory"
    t.string  "background_color"
    t.boolean "product_page"
    t.boolean "show_sku"
  end

  create_table "product_categories", :force => true do |t|
    t.integer "company_id"
    t.string  "name"
    t.string  "full_name"
    t.integer "parent_id"
    t.string  "import_category_id"
    t.integer "index"
    t.string  "sanitized_name"
    t.string  "url"
    t.integer "original_resource_id"
    t.boolean "disabled"
  end

  add_index "product_categories", ["parent_id"], :name => "product_category_parent_id_idx"

  create_table "product_category_translations", :force => true do |t|
    t.integer  "product_category_id"
    t.string   "locale"
    t.string   "url"
    t.string   "name"
    t.string   "full_name"
    t.string   "sanitized_name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "product_category_translations", ["locale"], :name => "index_product_category_translations_on_locale"
  add_index "product_category_translations", ["product_category_id"], :name => "index_819c187b7261a5628697db0bc50de699f75970bd"

  create_table "resource_translations", :force => true do |t|
    t.integer  "resource_id"
    t.string   "locale"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "resource_translations", ["locale"], :name => "index_resource_translations_on_locale"
  add_index "resource_translations", ["resource_id"], :name => "index_resource_translations_on_resource_id"

  create_table "resources", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.string   "name"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.text     "description"
    t.string   "visits"
    t.string   "original_file_name"
    t.integer  "blog_id"
    t.integer  "featured_id",          :default => 0
    t.string   "photo_remote_url"
    t.integer  "user_id"
    t.string   "user_screen_name"
    t.integer  "original_company_id"
    t.boolean  "activated"
    t.integer  "width"
    t.integer  "height"
    t.integer  "first"
    t.string   "type"
    t.string   "gallery_category_ids"
    t.text     "link"
    t.integer  "order_id"
  end

  add_index "resources", ["company_id"], :name => "index_resources_on_company_id"

  create_table "services", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
    t.integer  "contact_id"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.string   "contact_title"
    t.string   "buy"
    t.string   "sell"
    t.string   "city"
    t.string   "state"
    t.integer  "add_group_id"
  end

  create_table "shipping_regions", :force => true do |t|
    t.integer "company_id"
    t.string  "name"
    t.decimal "price",         :precision => 10, :scale => 2
    t.integer "delivery_time"
  end

  create_table "similar_pages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "page_grader_id"
  end

  create_table "states", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "city_1"
    t.string   "city_2"
    t.string   "city_3"
    t.string   "city_4"
    t.integer  "company_count"
    t.string   "city_5"
    t.string   "city_6"
    t.string   "city_7"
  end

  create_table "subcategories", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.string   "es"
    t.string   "en"
    t.string   "name"
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "company_id"
    t.datetime "created_at"
    t.string   "billing_address"
    t.string   "billing_city"
    t.string   "billing_colonia"
    t.string   "billing_country"
    t.string   "billing_state"
    t.string   "billing_postal_code"
    t.string   "billing_phone"
    t.string   "billing_notorary"
    t.string   "billing_rfc"
    t.string   "billing_company_name"
    t.string   "billing_email"
    t.string   "shipping_period"
    t.datetime "previous_shipping_date"
    t.datetime "next_shipping_date"
    t.string   "payment_method"
    t.string   "payment_period"
    t.datetime "previous_payment_date"
    t.datetime "next_payment_date"
    t.datetime "final_payment_date"
    t.integer  "purchaser_user_id"
    t.string   "rfc"
    t.string   "shipping_address"
    t.string   "shipping_city"
    t.string   "shipping_colonia"
    t.string   "shipping_country"
    t.decimal  "shipping_cost"
    t.string   "shipping_email"
    t.string   "shipping_method"
    t.string   "shipping_name"
    t.string   "shipping_phone"
    t.string   "shipping_postal_code"
    t.string   "shipping_state"
    t.string   "status"
    t.string   "transaction_id"
    t.string   "reference_id"
    t.decimal  "subtotal"
    t.decimal  "tax"
    t.decimal  "total"
    t.datetime "updated_at"
    t.boolean  "temporary"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "taggable_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "taginputs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :id => false, :force => true do |t|
    t.integer  "id",         :null => false
    t.string   "tag"
    t.tsvector "tag_vector"
  end

  add_index "tags", ["tag"], :name => "unique_tag", :unique => true
  add_index "tags", ["tag_vector"], :name => "tag_search_idx"

  create_table "temp_export", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.string   "screen_name"
    t.string   "email"
    t.integer  "company_id"
    t.string   "company_name"
    t.string   "company_phone"
    t.datetime "created_at"
  end

  create_table "themes", :force => true do |t|
    t.string "name"
    t.string "author"
    t.text   "categories"
  end

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tag_name"
    t.integer  "service_id"
    t.integer  "product_id"
    t.integer  "user_id"
    t.string   "company"
    t.text     "related"
    t.integer  "specific_bool"
  end

  create_table "user_billing_addresses", :force => true do |t|
    t.integer "user_id"
    t.string  "country"
    t.string  "state"
    t.string  "city"
    t.string  "colonia"
    t.string  "street_address"
    t.string  "postal_code"
    t.string  "phone"
    t.string  "company_name"
    t.string  "rfc"
  end

  create_table "user_billing_infos", :force => true do |t|
    t.integer "user_id"
    t.string  "billing_info_name"
    t.string  "address"
    t.string  "city"
    t.string  "colonia"
    t.string  "company_name"
    t.string  "country"
    t.string  "email"
    t.string  "external_number"
    t.string  "internal_number"
    t.string  "notorary"
    t.string  "phone"
    t.string  "postal_code"
    t.string  "state"
    t.string  "street"
    t.string  "rfc"
  end

  create_table "user_edits", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.integer  "user_id"
  end

  create_table "user_infos", :force => true do |t|
    t.string   "website"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "views",      :default => 0
  end

  create_table "user_session", :force => true do |t|
    t.string "username"
    t.string "password"
  end

  create_table "user_shipping_addresses", :force => true do |t|
    t.integer "user_id"
    t.string  "address_name"
    t.string  "address"
    t.string  "city"
    t.string  "colonia"
    t.string  "country"
    t.string  "email"
    t.string  "external_number"
    t.string  "intersection"
    t.string  "internal_number"
    t.string  "name"
    t.string  "phone"
    t.string  "postal_code"
    t.string  "state"
    t.string  "street"
  end

  create_table "users", :force => true do |t|
    t.string   "screen_name"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "perishable_token",     :default => "",    :null => false
    t.boolean  "active",               :default => false, :null => false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "image"
    t.string   "fb_image"
    t.string   "location"
    t.integer  "company_id"
    t.integer  "review_count",         :default => 0
    t.integer  "friend_count",         :default => 0
    t.integer  "login_count"
    t.string   "profile_file_name"
    t.string   "profile_content_type"
    t.integer  "profile_file_size"
    t.string   "language"
    t.string   "twitter_image"
    t.integer  "invitation_id"
    t.string   "sender_email"
    t.integer  "editor_access"
    t.string   "sex"
    t.string   "tags"
    t.string   "page_id"
    t.string   "phone"
    t.integer  "manager_id"
    t.string   "type"
  end

  add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token"

  create_table "versions", :force => true do |t|
    t.string   "item_type",      :null => false
    t.integer  "item_id",        :null => false
    t.string   "event",          :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.text     "object_changes"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.string   "panda_video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.string   "visits"
  end

end
