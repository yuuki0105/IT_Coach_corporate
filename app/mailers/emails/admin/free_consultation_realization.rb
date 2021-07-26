module Emails::Admin::FreeConsultationRealization
  extend ActiveSupport::Concern

  def free_consultation_realization(free_consultation_realization)
    @free_consultation_realization = free_consultation_realization
    mail(to: "komatsu3613@gmail.com", cc: "customer@reali-zation.com", subject: "【IT Coach】無料オンライン相談申し込み")
  end
end
