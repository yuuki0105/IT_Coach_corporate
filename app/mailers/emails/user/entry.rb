module Emails::User::Entry
  extend ActiveSupport::Concern

  def entry(entry)
    @entry = entry
    mail(to: @entry.email, subject: "【IT Coach】エントリーありがとうございます。")
  end

end
