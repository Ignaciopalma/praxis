class PagesController < ApplicationController

	def index
		@page = Page.new
		@page.orders.build
		@page.products.build
		@contact = Contact.new
	end

	def happy_ending
		@orders = Order.all
	end

	def show
	@orders = Order.all

	  @order = Order.find_by(id: params[:id])
	  if @order.nil?
	    render action: "index"
	  end
	end

	def new
		@page = Page.new
		@page.orders.build
	end

	def create
    @page = Page.new(page_params)


    
      if @page.save
        redirect_to @page, notice: 'Post was successfully created.' 
      else
        render :sad_ending 
      end



    end

    private

    def page_params
    	params.require(:page).permit(:first_name, :last_name, :email, :address, :ciudad, orders_attributes: [:first_name, :phone, :rut, :abono, :total, :saldo, :last_name, :checkbox_value, :email, :address, :ciudad])
    end



end