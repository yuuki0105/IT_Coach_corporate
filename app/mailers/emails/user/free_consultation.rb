module Emails::User::FreeConsultation
  extend ActiveSupport::Concern

  def free_consultation(free_consultation)
    @free_consultation = free_consultation
    mail(to: @free_consultation.email, subject: "【IT Coach】無料オンライン相談の申し込みありがとうございます。")
  end
end
