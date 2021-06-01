class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :company, null: false
      t.string :role, null: false
      t.string :email, null: false
      t.string :telephone, null: false
      t.text :will, null: false
      t.integer :budget_id, null: false
      t.integer :tech_ability_id, null: false
      t.integer :business_manner_id, null: false
      t.integer :communication_ability_id, null: false
      t.text :other
      t.boolean :privacy, null: false, default: false

      t.timestamps
    end
  end
end
