class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :Liker_id, null: false
      t.integer :bork_id, null: false
      t.timestamps
    end
  add_index :borker_id
  end
end
