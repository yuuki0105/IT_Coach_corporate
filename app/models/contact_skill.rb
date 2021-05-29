# == Schema Information
#
# Table name: contact_skills
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  contact_id :bigint
#  skill_id   :bigint
#
# Indexes
#
#  index_contact_skills_on_contact_id  (contact_id)
#  index_contact_skills_on_skill_id    (skill_id)
#
# Foreign Keys
#
#  fk_rails_...  (contact_id => contacts.id)
#  fk_rails_...  (skill_id => skills.id)
#
class ContactSkill < ApplicationRecord
  include Auditable

  # Relations

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
