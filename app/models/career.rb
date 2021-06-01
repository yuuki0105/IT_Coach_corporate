# == Schema Information
#
# Table name: careers
#
#  id           :bigint           not null, primary key
#  entry_id     :bigint           not null
#  organization :string(255)      not null
#  role         :string(255)      not null
#  start_month  :date             not null
#  end_month    :date
#  ongoing      :boolean          default(FALSE), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_careers_on_entry_id  (entry_id)
#
# Foreign Keys
#
#  fk_rails_...  (entry_id => entries.id)
#
class Career < ApplicationRecord

  # Relations
  belongs_to :entry

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
