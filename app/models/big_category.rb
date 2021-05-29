# == Schema Information
#
# Table name: big_categories
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BigCategory < ApplicationRecord
  has_many :categories

  # Relations

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
