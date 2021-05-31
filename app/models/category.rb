# == Schema Information
#
# Table name: categories
#
#  id              :bigint           not null, primary key
#  big_category_id :bigint
#  name            :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_categories_on_big_category_id  (big_category_id)
#
# Foreign Keys
#
#  fk_rails_...  (big_category_id => big_categories.id)
#
class Category < ApplicationRecord
  # Relations
  belongs_to :big_category

  has_many :contacts, through: :contact_categories
  has_many :contact_categories

  has_many :entry_categories
  has_many :entries, through: :entry_categories

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
