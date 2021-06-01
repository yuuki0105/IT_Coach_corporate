# == Schema Information
#
# Table name: contact_source_routes
#
#  id              :bigint           not null, primary key
#  source_route_id :bigint
#  contact_id      :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_contact_source_routes_on_contact_id       (contact_id)
#  index_contact_source_routes_on_source_route_id  (source_route_id)
#
# Foreign Keys
#
#  fk_rails_...  (contact_id => contacts.id)
#  fk_rails_...  (source_route_id => source_routes.id)
#
class ContactSourceRoute < ApplicationRecord

  # Relations
  belongs_to :contact
  belongs_to :source_route

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
