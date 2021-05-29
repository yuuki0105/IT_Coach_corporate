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

  private

  def skills
    Skill.where(id: skill_ids)
  end

  def delete!
    ip_blocks.each { |ip_block| authorize(ip_block, :destroy?) }

    ip_blocks.each do |ip_block|
      ip_block.destroy
      log_action :destroy, ip_block
    end
  end
end

