# == Schema Information
#
# Table name: skills
#
#  id                :bigint           not null, primary key
#  name              :string(255)      not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  skill_category_id :bigint
#
# Indexes
#
#  index_skills_on_skill_category_id  (skill_category_id)
#
# Foreign Keys
#
#  fk_rails_...  (skill_category_id => skill_categories.id)
#
class Skill < ApplicationRecord
  include Auditable

  # Relations

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
