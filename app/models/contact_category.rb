# == Schema Information
#
# Table name: contact_categories
#
#  id          :bigint           not null, primary key
#  category_id :bigint
#  contact_id  :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_contact_categories_on_category_id  (category_id)
#  index_contact_categories_on_contact_id   (contact_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (contact_id => contacts.id)
#
class ContactCategory < ApplicationRecord
  belongs_to :contact
  belongs_to :category

  # Relations

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
