class Forms::ContactForm
  include ActiveModel::Model
  include ActiveModel::Validations
  include ActiveModel::Attributes

  attr_accessor :contact, :name, :company, :role, :email, :telephone, :other, :privacy, :source_route_ids, :budget

  validates :name , presence: true
  validates :company , presence: true
  validates :role , presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }}

  validates :telephone , presence: true
  validates :other , length: { maximum: 255 }
  validates :privacy , presence: true
  validates :source_route_ids , presence: true

  def set_attributes(attributes)
    self.name = attributes[:name]
    self.company = attributes[:company]
    self.role = attributes[:role]
    self.email = attributes[:email]
    self.telephone = attributes[:telephone]
    self.other = attributes[:other]
    self.budget = attributes[:budget]
    self.privacy = ActiveModel::Type::Boolean.new.cast(attributes[:privacy])
    self.source_route_ids = attributes[:source_route_ids].reject(&:blank?).map(&:to_i)
  end

  def save
    ApplicationRecord.transaction do
      @contact = Contact.create(name: name, company: company, role: role, email: email, telephone: telephone, other: other, privacy: privacy, budget_id: 1)
      source_routes.each do |source_route|
        contact.contact_source_routes.create(source_route: source_route)
      end
    end
  end

  private
  def source_routes
    SourceRoute.where(id: source_route_ids)
  end

end

