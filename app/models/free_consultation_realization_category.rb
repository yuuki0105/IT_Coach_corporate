# == Schema Information
#
# Table name: free_consultation_realization_categories
#
#  id                               :bigint           not null, primary key
#  category_id                      :bigint
#  free_consultation_realization_id :bigint
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#
# Indexes
#
#  category_free_consultation_realization     (category_id)
#  free_consultation_realization_category_id  (free_consultation_realization_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (free_consultation_realization_id => free_consultation_realizations.id)
#
class FreeConsultationRealizationCategory < ApplicationRecord
  belongs_to :free_consultation_realization
  belongs_to :category

  # Relations

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
