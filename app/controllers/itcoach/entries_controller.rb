class Itcoach::EntriesController < ApplicationController

  protect_from_forgery

  def show
    @form = Entry.new
  end

  def create
    @form = Entry.new(entry_params)
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
    params.require(:entry).permit(:name, :email, :telephone, :specialty, :privacy, :other,:minimum_fee_id, :max_fee_id,category_ids: [], source_route_ids: [])
  end

end