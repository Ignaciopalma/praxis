class PagesController < ApplicationController

	def index
		@page = Page.new
		@page.orders.build
		@contact = Contact.new
	end

	def happy_ending
		@orders = Order.all
	end

	def new
		@page = Page.new
		@page.orders.build
	end

	def create
    @page = Page.new(page_params)


    
      if @page.save
        redirect_to happy_ending_path, notice: 'Post was successfully created.' 
      else
        render :new 
      end



    end

    private

    def page_params
    	params.require(:page).permit(:first_name, :last_name, :email, :address, :ciudad, orders_attributes: [:first_name, :last_name, :checkbox_value, :email, :address, :ciudad])
    end



end