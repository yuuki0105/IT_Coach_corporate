class ContactsController < ApplicationController

  def show
    @form = Forms::ContactForm.new
  end

  def create
    @form = Forms::ContactForm.new
    @form.set_attributes(contact_parmas)
    @form.save

    redirect_to contact_complete_path
  end

  private

  def contact_parmas
    params.require(:forms_contact_form).permit(:name, :company, :role, :email, :telephone, :will, :budget, :tech_ability, :business_manner, :communication_ability, :other, :privacy, category_ids: [], source_route_ids: [])
  end
end
