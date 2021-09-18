class FreeConsultationsController < ApplicationController

  protect_from_forgery

  def show
    @form = FreeConsultation.new
  end

  def create
    @form = FreeConsultation.new(free_consultation_params)
    if @form.valid?
      @form.save
      Emails::User.free_consultation(@form).deliver_now
      Emails::Admin.free_consultation(@form).deliver_now
      redirect_to free_consultation_complete_path
    else
      render :show
    end
  end

  private
  def free_consultation_params
    params.require(:free_consultation).permit(:name, :company, :role, :email, :telephone, :privacy, :other)
  end

end
