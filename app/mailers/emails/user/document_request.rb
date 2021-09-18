module Emails::User::DocumentRequest
  extend ActiveSupport::Concern

  def document_request(document_request)
    @document_request = document_request
    mail(to: @document_request.email, subject: "【IT Coach】資料ダウンロードの申し込みありがとうございます。")
  end
end
