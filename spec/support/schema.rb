ActiveRecord::Schema.define(:version => 20140918144154442523) do

  create_table "preferences", force: true do |t|
    t.text     "value"
    t.string   "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "preferences", ["key"], name: "preferences_on_key", unique: true, using: :btree
end
