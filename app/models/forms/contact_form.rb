class Forms::ContactForm
  include ActiveModel::Model

  attr_accessor :name, :company, :roll, :email, :telephone, :will, :budget, :tech_ability, :business_manner, :communication_ability, :other, :privacy, :category_ids, :source_route_ids

  def set_attributes(attributes)
    self.name = attributes[:name]
    self.company = attributes[:company]
    self.roll = attributes[:roll]
    self.email = attributes[:email]
    self.telephone = attributes[:telephone]
    self.will = attributes[:will]
    self.budget = attributes[:budget]
    self.tech_ability = attributes[:tech_ability]
    self.business_manner = attributes[:business_manner]
    self.communication_ability = attributes[:communication_ability]
    self.other = attributes[:other]
    self.privacy = attributes[:privacy]
    self.category_ids = attributes[:category_ids]
    self.category_ids = attributes[:category_ids].reject(&:blank?)
  end

  def save
    ApplicationRecord.transaction do
      contact = Contact.create(name: name)
      categories.each do |category|
        contact.contact_categories.create(category: category)
      end
    end
  end
end

