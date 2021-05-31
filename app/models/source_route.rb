# == Schema Information
#
# Table name: source_routes
#
#  id         :bigint           not null, primary key
#  title      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SourceRoute < ApplicationRecord

  # Relations
  has_many :contacts, through: :contact_source_routes
  has_many :contact_source_routes

  has_many :entries, through: :entry_source_routes
  has_many :entry_source_routes

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
