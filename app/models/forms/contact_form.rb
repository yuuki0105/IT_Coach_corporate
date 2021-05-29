class Forms::ContactForm
  include ActiveModel::Model
  attr_accessor :skill_ids, :action, :current_account


  attr_accessor :name, :skill_ids

  def set_attributes(attributes)
    self.name = attributes[:name]
    self.skill_ids = attributes[:skill_ids].reject(&:blank?)
  end

  def save
    ApplicationRecord.transaction do
      contact = Contact.create(name: name)
      skills.each do |skill|
        contact.contact_skills.create(skill: skill)
      end
    end
  end
end

