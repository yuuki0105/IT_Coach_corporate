class CreateContactSourceRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_source_routes do |t|
      t.references :source_route, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
