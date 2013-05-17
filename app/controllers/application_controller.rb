class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :layout
end
def layout
	if is_a?(Devise::SessionsController) or is_a?(Devise::RegistrationsController)
		return "app2"
	else 
		return "application"
	end
end