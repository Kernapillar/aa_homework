class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, unique: true, null: false
      t.string :password_digest, unique: true, null: false
      t.string :session_token, unique: true, null: false

      t.timestamps
    end
    add_index :users, :username 
    add_index :users, :password_digest
  end
end
