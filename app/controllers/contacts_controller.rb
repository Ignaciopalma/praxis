class ContactsController < ApplicationController
	def new
	end

	def create
		@contact = Contact.new(contact_params)

      if @contact.save
        redirect_to root_path, notice: 'Post was successfully created.' 
      else
        render :new 
      end

	end

	private
	
	def contact_params
    	params.require(:contact).permit(:name, :email, :message)
    end
end
