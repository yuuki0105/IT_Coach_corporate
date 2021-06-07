class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :telephone, null: false
      t.text :specialty, null: false
      t.integer :minimum_fee_id, null: false
      t.integer :max_fee_id, null: false
      t.boolean :privacy, null: false, default: false
      t.text :other

      t.timestamps
    end
  end
end
