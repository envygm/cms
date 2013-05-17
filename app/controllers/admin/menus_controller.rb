module Admin


	class MenusController < BaseController

		def index
			@menus = Menu.all
		end

		def new
			@menu = Menu.new
		end

		def create
			@menu = Menu.new params[:menu]
			if @menu.save
				flash[:success] = 'Menu created'
				redirect_to(admin_menus_path)
			else 
				render action: 'new'
			end
		end

		def destroy
			@menu = Menu.find params[:id]
			@menu.destroy
			flash[:success] = 'Menu deleted'
			redirect_to(admin_menus_path)
		end

		def edit
			@menu = Menu.find params[:id]
		end

		def update
			@menu = Menu.find params[:id]
			if @menu.update_attributes params[:menu]
				flash[:success] = 'Menu updated'
				redirect_to(admin_menus_path)
			else
				render action: 'edit'
			end
		end

		def show
			@menu = Menu.find params[:id]
		end

	end
	
end