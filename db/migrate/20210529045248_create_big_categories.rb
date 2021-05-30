class CreateBigCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :big_categories do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
