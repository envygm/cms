class NewsController < ApplicationController

	def index
		@news = News.all
	end

	def new
		@news = News.new
	end

	def create
		@news = News.new params[:news]
		if @news.save
			flash[:success] = 'News created'
			redirect_to(news_index_path)
		else 
			render action: 'new'
		end
	end

	def destroy
		@news = News.find params[:id]
		@news.destroy
		flash[:success] = 'News deleted'
		redirect_to(news_index_path)
	end

	def edit
		@news = News.find params[:id]
	end

	def update
		@news = News.find params[:id]
		if @news.update_attributes params[:news]
			flash[:success] = 'News updated'
			redirect_to(news_index_path)
		else
			render action: 'edit'
		end
	end

	def show
		@news = News.find params[:id]
	end

end
