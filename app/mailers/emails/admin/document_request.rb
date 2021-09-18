module Emails::Admin::DocumentRequest
  extend ActiveSupport::Concern

  def document_request(document_request)
    @document_request = document_request
    mail(to: "komatsu3613@gmail.com", subject: "【IT Coach】資料ダウンロード")
  end
end
