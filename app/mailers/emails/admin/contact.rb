module Emails::Admin::Contact
  extend ActiveSupport::Concern

  def contact(contact)
    @contact = contact
    mail(to: @contact.email, subject: "【IT Coach】お問い合わせ")
  end
end
