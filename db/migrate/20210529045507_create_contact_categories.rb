class CreateContactCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_categories do |t|
      t.references :category, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
