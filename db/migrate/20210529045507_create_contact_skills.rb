class CreateContactSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_skills do |t|
      t.references :skill, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
