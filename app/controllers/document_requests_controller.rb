class DocumentRequestsController < ApplicationController

  protect_from_forgery

  def show
    @form = DocumentRequest.new
  end

  def create
    @form = DocumentRequest.new(document_request_params)
    if @form.valid?
      @form.save
      Emails::User.document_request(@form).deliver_now
      Emails::Admin.document_request(@form).deliver_now
      redirect_to document_request_complete_path
    else
      render :show
    end
  end

  private
  def document_request_params
    params.require(:document_request).permit(:name, :company, :role, :email, :telephone, :privacy, :other)
  end

end
