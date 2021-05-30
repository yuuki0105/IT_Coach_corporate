# == Schema Information
#
# Table name: entries
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  email      :string(255)      not null
#  telephone  :string(255)      not null
#  specialty  :text(65535)      not null
#  privacy    :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Entry < ApplicationRecord

  # Relations
  has_many :portfolios
  has_many :careers

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
