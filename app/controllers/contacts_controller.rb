class ContactsController < ApplicationController
  # for GET method
  def new; end

  # for POST method
  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      @contact.save
    else
      render action: 'new'
    end
  end

  private
  # Premit for marams
  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
