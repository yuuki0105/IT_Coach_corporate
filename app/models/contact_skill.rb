# == Schema Information
#
# Table name: contact_skills
#
#  id         :bigint           not null, primary key
#  skill_id   :bigint
#  contact_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
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
  belongs_to :contact
  belongs_to :skill

  # Relations

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
