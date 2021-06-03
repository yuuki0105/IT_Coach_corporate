class Emails::User::MailerPreview < ActionMailer::Preview
  def contact
    @contact = Contact.find_by(id: params[:id]) || Contact.last
    Emails::User.contact(@contact)
  end
  def entry
    @entry = Entry.find_by(id: params[:id]) || Entry.last
    Emails::User.entry(@entry)
  end

end