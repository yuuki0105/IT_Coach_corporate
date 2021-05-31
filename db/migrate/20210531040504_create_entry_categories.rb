class CreateEntryCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :entry_categories do |t|
      t.references :category, foreign_key: true
      t.references :entry, foreign_key: true

      t.timestamps
    end
  end
end
