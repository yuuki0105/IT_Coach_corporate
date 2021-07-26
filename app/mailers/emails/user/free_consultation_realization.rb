module Emails::User::FreeConsultationRealization
  extend ActiveSupport::Concern

  def free_consultation_realization(free_consultation_realization)
    @free_consultation_realization = free_consultation_realization
    mail(to: @free_consultation_realization.email, subject: "【IT Coach】無料オンライン相談の申し込みありがとうございます。")
  end
end
