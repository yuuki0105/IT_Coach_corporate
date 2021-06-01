class Itcoach::EntriesController < ApplicationController

  def show
    @form = Entry.new
    @form.careers.build if @form.careers.blank?
    @form.portfolios.build if @form.portfolios.blank?
  end

  def create
    @form = Entry.new(entry_params)
    if @form.valid?
      @form.save
      redirect_to root_path
    else
      render :show
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:name, :email, :telephone, :specialty, :privacy, :other, category_ids: [], source_route_ids: [], careers_attributes: [:id, :event_id, :organization, :role, :start_month, :end_month, :_destroy], portfolios_attributes: [:id, :event_id, :title, :url, :_destroy])
  end

end