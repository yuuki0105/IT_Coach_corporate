class Emails::Admin::MailerPreview < ActionMailer::Preview
  def contact
    @contact = Contact.find_by(id: params[:id]) || Contact.last
    Emails::Admin.contact(@contact)
  end
  def entry
    @entry = Entry.find_by(id: params[:id]) || Entry.last
    Emails::Admin.entry(@entry)
  end

end