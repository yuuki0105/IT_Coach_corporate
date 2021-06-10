module Emails::Admin::Entry
  extend ActiveSupport::Concern

  def entry(entry)
    @entry = entry
    mail(to: "komatsu3613@gmail.com", subject: "【IT Coach】エントリー")
  end

end
