class Emails::User < ApplicationMailer
  default from: "cs@itcoach.co.jp"

  include Emails::User::Contact
  include Emails::User::Entry
  include Emails::User::FreeConsultationRealization

end
