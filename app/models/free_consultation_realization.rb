# == Schema Information
#
# Table name: free_consultation_realizations
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  company    :string(255)      not null
#  role       :string(255)      not null
#  email      :string(255)      not null
#  telephone  :string(255)      not null
#  will       :text(65535)      not null
#  budget_id  :integer          not null
#  other      :text(65535)
#  privacy    :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class FreeConsultationRealization < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :budget

  has_many :free_consultation_realization_categories
  has_many :categories, through: :free_consultation_realization_categories

  # Relations

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
