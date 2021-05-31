class Itcoach::EntriesController < ApplicationController

  def show
    @form = Forms::ContactForm.new
  end

  def create
    @form = Entry.new
    @form.attributes = entry_params
    @form.save
    redirect_to root_path
  end

  private
  def entry_params
    params.require(:entry).permit(:name, careers_attributes: [])
  end

end
