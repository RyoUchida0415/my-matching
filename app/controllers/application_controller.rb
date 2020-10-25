class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
		case resource

		when Admin
		  admins_users_path
		when User
		  users_path
		end
	end

	def after_sign_up_path_for(resource)
		case resource

		when Admin
		  admins_users_path
		when User
		  users_path
		end
	end

	def after_sign_out_path_for(resource)
		homes_top_path
	end

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :email, :age, :prefecture, :sex, :introduction, :image])
	end
end

