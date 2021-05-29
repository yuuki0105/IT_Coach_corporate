class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.references :skill_category, foreign_key: true
      t.string :name, null: false
      t.timestamps
    end
  end
end
