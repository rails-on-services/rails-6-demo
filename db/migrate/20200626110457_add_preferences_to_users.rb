class AddPreferencesToUsers < ActiveRecord::Migration[6.0]
  def change
    enable_extension "hstore"
    add_column :users, :preferences, :hstore
    add_index :users, :preferences, using: :gin
  end
end
