class UsersController < ApplicationController
  def index
<<<<<<< HEAD
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])
    @blogs = Blog.where(user_id: @user.id)
=======
  end

  def show
>>>>>>> a6f97cf559db74f324d0664171ea5a5194d8c456
  end

  def edit
  end

  def update
  end
end
