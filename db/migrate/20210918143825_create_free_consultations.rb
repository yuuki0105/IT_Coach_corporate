class CreateFreeConsultations < ActiveRecord::Migration[6.1]
  def change
    create_table :free_consultations do |t|
      t.string :name, null: false
      t.string :company, null: false
      t.string :role, null: false
      t.string :email, null: false
      t.string :telephone, null: false
      t.text :other
      t.boolean :privacy, null: false, default: false

      t.timestamps
    end
  end
end
