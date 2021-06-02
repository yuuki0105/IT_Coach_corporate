module Emails::Admin::Contact
  extend ActiveSupport::Concern

  def contact(email)
    mail(to: email, subject: "【IT Coach】お問い合わせ")
  end
end
