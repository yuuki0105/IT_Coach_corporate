class Itcoach::EntriesController < ApplicationController

  def show
    @form = Entry.new
    @form.careers.build if @form.careers.blank?
    @form.portfolios.build if @form.portfolios.blank?
  end

  def create
    @form = Entry.new(entry_params)
    @form.portfolios.build if @form.portfolios.blank?
    if @form.valid?
      @form.save
      Emails::User.entry(@form).deliver_now
      Emails::Admin.entry(@form).deliver_now
      redirect_to itcoach_complete_path
    else
      render :show
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:name, :email, :telephone, :specialty, :privacy, :other, category_ids: [], source_route_ids: [], careers_attributes: [:id, :event_id, :organization, :role, :start_month, :end_month, :_destroy], portfolios_attributes: [:id, :event_id, :title, :url, :_destroy])
  end

end