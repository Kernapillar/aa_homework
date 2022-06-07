class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.timestamps
    end
    # add_index :table, :col 
    add_index :users, :username, unique: true

  end
end
