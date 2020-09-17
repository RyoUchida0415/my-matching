class BlogsController < ApplicationController
	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)
		@blog.user_id = current_user.id
		if @blog.save
		  flash[:success] = 'ブログ投稿できました！'
		  redirect_to user_path(current_user.id)
		else
		  flash[:danger] = 'ブログ投稿出来ませんでした。空欄ではありませんか？'
		  render 'new'
		end
	end

	private
	def blog_params
		params.require(:blog).permit(:blog)
	end
end
