class CreateEntrySourceRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :entry_source_routes do |t|
      t.references :source_route, foreign_key: true
      t.references :entry, foreign_key: true

      t.timestamps
    end
  end
end
