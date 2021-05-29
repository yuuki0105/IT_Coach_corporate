class ContactsController < ApplicationController

  def show
    @form = Forms::ContactForm.new
  end

  def create
    @form = Forms::ContactForm.new
    @form.set_attributes(contact_parmas)
    @form.save

    redirect_to root_path
  end

  private

  def contact_parmas
    params.require(:forms_contact_form).permit(:name, skill_ids: [])
  end
end
