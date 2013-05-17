module Admin

	class DashboardController < BaseController
	  def index
	  end

	  def search
	  	@search = params[:search]
	  	@results_page = Page.find_with_index(params[:search])
	  	@results_menu = Menu.find_with_index(params[:search])
	  	@results_news = News.find_with_index(params[:search])
	  end
	  	
	end
	
end