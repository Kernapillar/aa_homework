class CreateBorks < ActiveRecord::Migration[5.2]
  def change
    create_table :borks do |t|
      t.text :bork_body, null: false
      t.integer :borker_id, null: false
      t.timestamps
    end
  end
end
