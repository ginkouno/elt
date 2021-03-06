ActiveRecord::Schema.define(version: 20141126025615) do

  create_table "attendees", force: true do |t|
    t.string   "nickname"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vote_targets", force: true do |t|
    t.string   "title"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "attendee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
    t.integer  "vote_target_id"
  end

  create_table "yamatojis", force: true do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "yamatojis", ["email"], name: "index_yamatojis_on_email", unique: true

end
