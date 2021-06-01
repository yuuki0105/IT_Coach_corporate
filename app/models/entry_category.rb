# == Schema Information
#
# Table name: entry_categories
#
#  id          :bigint           not null, primary key
#  category_id :bigint
#  entry_id    :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_entry_categories_on_category_id  (category_id)
#  index_entry_categories_on_entry_id     (entry_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (entry_id => entries.id)
#
class EntryCategory < ApplicationRecord

  # Relations
  belongs_to :entry
  belongs_to :category

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
