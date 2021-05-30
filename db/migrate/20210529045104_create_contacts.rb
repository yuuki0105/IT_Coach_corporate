class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :company, null: false
      t.string :roll, null: false
      t.string :email, null: false
      t.string :telephone, null: false
      t.text :will, null: false
      t.integer :bughet, null: false
      t.integer :tech_ability, null: false
      t.integer :business_manner, null: false
      t.integer :communication_ability, null: false
      t.text :other, null: false
      t.boolean :privacy, null: false, default: false

      t.timestamps
    end
  end
end
