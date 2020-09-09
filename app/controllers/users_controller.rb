class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])
    @blogs = Blog.where(user_id: @user.id)

    #メッセージ機能
    @currentUserEntry=Entry.where(user_id: current_user.id)
    @userEntry=Entry.where(user_id: @user.id)
    if @user.id == current_user.id
    else
      @currentUserEntry.each do |current_user|
        @userEntry.each do |user|
          if current_user.room_id == user.room_id then
            @isRoom = true
            @roomId = current_user.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def edit
  end

  def update
  end
end
