class ContactController < ApplicationController
  def index
  	@contact = Contact.new
  end
  def send_message
  	@contact = Contact.new(contact_params)
  	 if @contact.save
  	 	flash[:notice] = "Message sent!"
  	 	redirect_to :back
  	 else
  	 	render 'index'
  	 end
  end


  private
  def contact_params
  	params.require(:contact).permit(:name, :subject, :email, :message)
  end
end
