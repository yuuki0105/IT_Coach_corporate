class Forms::ContactForm
  include ActiveModel::Model

  attr_accessor :name, :company, :role, :email, :telephone, :will, :budget, :tech_ability, :business_manner, :communication_ability, :other, :privacy, :category_ids, :source_route_ids

  def set_attributes(attributes)
    self.name = attributes[:name]
    self.company = attributes[:company]
    self.role = attributes[:role]
    self.email = attributes[:email]
    self.telephone = attributes[:telephone]
    self.will = attributes[:will]
    self.budget = attributes[:budget].to_i
    self.tech_ability = attributes[:tech_ability].to_i
    self.business_manner = attributes[:business_manner].to_i
    self.communication_ability = attributes[:communication_ability].to_i
    self.other = attributes[:other]
    self.privacy = ActiveModel::Type::Boolean.new.cast(attributes[:privacy])
    self.category_ids = attributes[:category_ids].reject(&:blank?).map(&:to_i)
    self.source_route_ids = attributes[:source_route_ids].reject(&:blank?).map(&:to_i)
  end

  def save
    ApplicationRecord.transaction do
      contact = Contact.create(name: name, company: company, role: role, email: email, telephone: telephone, will: will, budget_id: budget, tech_ability_id: tech_ability, business_manner_id: business_manner, communication_ability_id: communication_ability, other: other, privacy: privacy)
      categories.each do |category|
        contact.contact_categories.create(category: category)
      end
      source_routes.each do |source_route|
        contact.contact_source_routes.create(source_route: source_route)
      end
    end
  end

  private
  def categories
    Category.where(id: category_ids)
  end
  def source_routes
    SourceRoute.where(id: source_route_ids)
  end

end

