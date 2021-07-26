class Emails::Admin < ApplicationMailer
  default from: "cs@itcoach.co.jp"

  include Emails::Admin::Contact
  include Emails::Admin::Entry
  include Emails::Admin::FreeConsultationRealization

end
