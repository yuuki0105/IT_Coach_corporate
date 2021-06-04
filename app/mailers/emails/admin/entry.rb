module Emails::Admin::Entry
  extend ActiveSupport::Concern

  def entry(entry)
    @entry = entry
    mail(to: "komatsu@itcoach.co.jp", subject: "【IT Coach】エントリー")
  end

end
