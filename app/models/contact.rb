# == Schema Information
#
# Table name: contacts
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contact < ApplicationRecord
  has_many :skills, through: :contact_skills
  has_many :contact_skills

  # Relations

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
