class ContactsController < ApplicationController
  # for GET method
  def new; end

  # for POST method
  def create
    @contact = Contact.new(contact_params)
    @contact.save
  end

  private
  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
