class ContactsController < ApplicationController

  protect_from_forgery

  def show
    @form = Forms::ContactForm.new
  end

  def create
    @form = Forms::ContactForm.new
    @form.set_attributes(contact_parmas)
    if @form.valid?
      @form.save
      @contact = @form.contact
      Emails::User.contact(@contact).deliver_now
      Emails::Admin.contact(@contact).deliver_now
      redirect_to contact_complete_path
    else
      render :show
    end
  end

  private

  def contact_parmas
    params.require(:forms_contact_form).permit(:name, :company, :role, :email, :telephone, :will, :budget, :tech_ability, :business_manner, :communication_ability, :other, :privacy, category_ids: [], source_route_ids: [])
  end
end
