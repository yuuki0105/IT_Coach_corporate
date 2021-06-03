module Emails::Admin::Entry
  extend ActiveSupport::Concern

  def entry(entry)
    @entry = entry
    mail(to: @entry.email, subject: "【IT Coach】エントリー")
  end

end
