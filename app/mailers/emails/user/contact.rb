module Emails::User::Contact
  extend ActiveSupport::Concern

  def contact(email)
    mail(to: email, subject: "hoge")
  end
end
