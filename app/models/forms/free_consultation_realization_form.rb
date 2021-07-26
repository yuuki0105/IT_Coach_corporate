class Forms::FreeConsultationRealizationForm
  include ActiveModel::Model
  include ActiveModel::Validations
  include ActiveModel::Attributes

  attr_accessor :free_consultation_realization, :name, :company, :role, :email, :telephone, :will, :budget, :other, :privacy, :category_ids

  validates :name , presence: true
  validates :company , presence: true
  validates :role , presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }}

  validates :telephone , presence: true
  validates :will , presence: true, length: { maximum: 255 }
  validates :budget , presence: true
  validates :other , length: { maximum: 255 }
  validates :privacy , presence: true
  validates :category_ids , presence: true

  def set_attributes(attributes)
    self.name = attributes[:name]
    self.company = attributes[:company]
    self.role = attributes[:role]
    self.email = attributes[:email]
    self.telephone = attributes[:telephone]
    self.will = attributes[:will]
    self.budget = attributes[:budget].to_i
    self.other = attributes[:other]
    self.privacy = ActiveModel::Type::Boolean.new.cast(attributes[:privacy])
    self.category_ids = attributes[:category_ids].reject(&:blank?).map(&:to_i)
  end

  def save
    ApplicationRecord.transaction do
      @free_consultation_realization = FreeConsultationRealization.create(name: name, company: company, role: role, email: email, telephone: telephone, will: will, budget_id: budget, other: other, privacy: privacy)
      categories.each do |category|
        free_consultation_realization.free_consultation_realization_categories.create(category: category)
      end
    end
  end

  private
  def categories
    Category.where(id: category_ids)
  end

end

