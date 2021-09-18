module Emails::Admin::FreeConsultation
  extend ActiveSupport::Concern

  def free_consultation(free_consultation)
    @free_consultation = free_consultation
    mail(to: "komatsu3613@gmail.com", subject: "【IT Coach】無料オンライン相談")
  end
end
