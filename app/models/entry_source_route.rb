# == Schema Information
#
# Table name: entry_source_routes
#
#  id              :bigint           not null, primary key
#  source_route_id :bigint
#  entry_id        :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_entry_source_routes_on_entry_id         (entry_id)
#  index_entry_source_routes_on_source_route_id  (source_route_id)
#
# Foreign Keys
#
#  fk_rails_...  (entry_id => entries.id)
#  fk_rails_...  (source_route_id => source_routes.id)
#
class EntrySourceRoute < ApplicationRecord

  # Relations
  belongs_to :entry
  belongs_to :source_routes

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
