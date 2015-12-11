class FlatsController < ApplicationController

	def show
		@flat = Flat.find(params[:id])
	end

	def index
		@flats = Flat.all
	end

	def new
		@flat = Flat.new
	end

	def create
		@flat = Flat.new(flat_params)
		@flat.save
		redirect_to flats_path
	end

	def destroy
		@flat = Flat.find(params[:id])
		@flat.destroy
		redirect_to flats_path
	end	

	def edit
		@flat = Flat.find(params[:id])
	end

	def update
	  @flat = Flat.find(params[:id])
	  @flat.update(flat_params)
	  flash.notice = "Flat '#{@Flat.title}' Updated!"
	  redirect_to flat_path(@Flat)
	end

	private
	def  flat_params
		params.require(:flat).permit(:title, :price)
	end	


end
