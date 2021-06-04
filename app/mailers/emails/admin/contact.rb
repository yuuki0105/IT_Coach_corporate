module Emails::Admin::Contact
  extend ActiveSupport::Concern

  def contact(contact)
    @contact = contact
    mail(to: "komatsu@itcoach.co.jp", subject: "【IT Coach】お問い合わせ")
  end
end
