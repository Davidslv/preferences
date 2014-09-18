class CreatePreferences < ActiveRecord::Migration
  def change
    create_table "preferences", force: true do |t|
      t.text     "value"
      t.string   "key"
    end

    add_index "preferences", ["key"], name: "preferences_on_key", unique: true, using: :btree
  end
end
