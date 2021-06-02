module Emails::Admin::Entry
  extend ActiveSupport::Concern

  def entry(email)
    mail(to: email, subject: "【IT Coach】エントリー")
  end
end
