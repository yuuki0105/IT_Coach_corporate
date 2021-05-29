class Emails::User < ApplicationMailer
  default from: "komatsu@member.co.jp"

  include Emails::User::Contact
end
