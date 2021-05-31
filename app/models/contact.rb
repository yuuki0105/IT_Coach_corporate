# == Schema Information
#
# Table name: contacts
#
#  id                       :bigint           not null, primary key
#  name                     :string(255)      not null
#  company                  :string(255)      not null
#  roll                     :string(255)      not null
#  email                    :string(255)      not null
#  telephone                :string(255)      not null
#  will                     :text(65535)      not null
#  budget_id                :integer          not null
#  tech_ability_id          :integer          not null
#  business_manner_id       :integer          not null
#  communication_ability_id :integer          not null
#  other                    :text(65535)      not null
#  privacy                  :boolean          default(FALSE), not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
class Contact < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :budget
  belongs_to :tech_ability
  belongs_to :business_manner
  belongs_to :communication_ability

  has_many :categories, through: :contact_categories
  has_many :contact_categories

  # Relations

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
