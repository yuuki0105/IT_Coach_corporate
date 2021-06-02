module Emails::User::Entry
  extend ActiveSupport::Concern

  def entry(email)
    mail(to: email, subject: "【IT Coach】エントリーありがとうございます。")
  end
end
