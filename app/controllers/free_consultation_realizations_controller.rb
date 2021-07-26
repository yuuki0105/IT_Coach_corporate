class FreeConsultationRealizationsController < ApplicationController

  protect_from_forgery

  def show
    @form = Forms::FreeConsultationRealizationForm.new
  end

  def create
    @form = Forms::FreeConsultationRealizationForm.new
    @form.set_attributes(free_consultation_realization_parmas)
    if @form.valid?
      @form.save
      @free_consultation_realization = @form.free_consultation_realization
      Emails::User.free_consultation_realization(@free_consultation_realization).deliver_now
      Emails::Admin.free_consultation_realization(@free_consultation_realization).deliver_now
      redirect_to free_consultation_realization_complete_path
    else
      render :show
    end
  end

  private

  def free_consultation_realization_parmas
    params.require(:forms_free_consultation_realization_form).permit(:name, :company, :role, :email, :telephone, :will, :budget,  :other, :privacy, category_ids: [])
  end

end