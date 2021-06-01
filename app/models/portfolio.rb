# == Schema Information
#
# Table name: portfolios
#
#  id         :bigint           not null, primary key
#  entry_id   :bigint           not null
#  title      :string(255)      not null
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_portfolios_on_entry_id  (entry_id)
#
# Foreign Keys
#
#  fk_rails_...  (entry_id => entries.id)
#
class Portfolio < ApplicationRecord

  # Relations
  belongs_to :entry

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
