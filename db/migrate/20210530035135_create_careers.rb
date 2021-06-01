class CreateCareers < ActiveRecord::Migration[6.1]
  def change
    create_table :careers do |t|
      t.references :entry, null: false, foreign_key: true
      t.string :organization, null: false
      t.string :role, null: false
      t.date :start_month, null: false
      t.date :end_month
      t.boolean :ongoing, null: false, default: false

      t.timestamps
    end
  end
end
