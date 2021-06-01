# == Schema Information
#
# Table name: entries
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  email      :string(255)      not null
#  telephone  :string(255)      not null
#  specialty  :text(65535)      not null
#  privacy    :boolean          default(FALSE), not null
#  other      :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Entry < ApplicationRecord

  # Relations
  has_many :portfolios
  has_many :careers

  has_many :entry_categories
  has_many :categories, through: :entry_categories

  has_many :entry_source_routes
  has_many :source_routes, through: :entry_source_routes

  accepts_nested_attributes_for :careers, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :portfolios, allow_destroy: true, reject_if: :all_blank

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
