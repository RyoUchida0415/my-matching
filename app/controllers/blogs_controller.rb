class BlogsController < ApplicationController
	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)
		@blog.user_id = current_user.id
		if @blog.save
		  redirect_to user_path(@user.id)
		else
		  render 'new'
		end
	end

	private
	def blog_params
		params.require(:blog).permit(:blog)
	end
end
