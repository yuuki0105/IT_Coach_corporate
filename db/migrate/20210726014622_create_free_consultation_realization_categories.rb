class CreateFreeConsultationRealizationCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :free_consultation_realization_categories do |t|
      t.references :category, foreign_key: true, index: { name: 'category_free_consultation_realization' }
      t.references :free_consultation_realization, foreign_key: true, index: { name: 'free_consultation_realization_category_id' }

      t.timestamps
    end
  end
end
