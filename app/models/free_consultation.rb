# == Schema Information
#
# Table name: free_consultations
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  company    :string(255)      not null
#  role       :string(255)      not null
#  email      :string(255)      not null
#  telephone  :string(255)      not null
#  other      :text(65535)
#  privacy    :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class FreeConsultation < ApplicationRecord

  # Relations

  # Validations
  validates :name , presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }}

  validates :telephone , presence: true
  validates :other , length: { maximum: 255 }
  validates :privacy , presence: true

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
