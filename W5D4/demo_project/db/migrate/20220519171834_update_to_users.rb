class UpdateToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :favorite_doge, :string, null: false
    add_column :users, :age, :integer, null: false
    add_column :users, :doge_age, :integer, null:false
  end
end
