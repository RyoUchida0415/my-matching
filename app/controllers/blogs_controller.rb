class BlogsController < ApplicationController
	def index
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)
		@blog.user_id = current_user.id
		@blog.save
		redirect_to users_path
	end

	private
	def blog_params
		params.require(:blog).permit(:blog)
	end
end
