# == Schema Information
#
# Table name: skill_categories
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SkillCategory < ApplicationRecord
  include Auditable

  # Relations

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
