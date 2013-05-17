module Admin

	class BaseController < ApplicationController

		before_filter :require_login

		def require_login

			if current_user.nil?
				flash[:error] = 'You must be logged in.'
				redirect_to new_user_session_path
			end


		end

	end

end