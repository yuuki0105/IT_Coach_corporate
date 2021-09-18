class Emails::User < ApplicationMailer
  default from: "cs@itcoach.co.jp"

  include Emails::User::Contact
  include Emails::User::Entry
  include Emails::User::DocumentRequest
  include Emails::User::FreeConsultation
  include Emails::User::FreeConsultationRealization

end
