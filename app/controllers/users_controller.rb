class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])
    #@blog = Blog.find(params[:id])
  end

  def edit
  end

  def update
  end
end
