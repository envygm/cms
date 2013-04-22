class PagesController < ApplicationController

	def index
		@pages = Page.all
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new params[:page]
		if @page.save
			flash[:success] = 'Page created'
			redirect_to(pages_path)
		else 
			render action: 'new'
		end
	end

	def destroy
		@page = Page.find params[:id]
		@page.destroy
		flash[:success] = 'Page deleted'
		redirect_to(pages_path)
	end

	def edit
		@page = Page.find params[:id]
	end

	def update
		@page = Page.find params[:id]
		if @page.update_attributes params[:page]
			flash[:success] = 'Page updated'
			redirect_to(pages_path)
		else
			render action: 'edit'
		end
	end

	def show
		@page = Page.find params[:id]
	end

end