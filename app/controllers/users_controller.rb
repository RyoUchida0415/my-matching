class UsersController < ApplicationController
  def index
        if User.where(sex: 1)
  	     @users = User.where(sex: 2)
        else
          @users = User.where(sex: 1)
        end
  end

  def show
    @user = User.find(params[:id])
    @blogs = Blog.where(user_id: @user.id)

    #メッセージ機能
    @currentUserEntry=Entry.where(user_id: current_user.id)
    @userEntry=Entry.where(user_id: @user.id)
    #現在ログインしているユーザーでないのならば
    unless @user.id == current_user.id
      @currentUserEntry.each do |current_user|
        @userEntry.each do |user|
          #roomが作成されているならば
          if current_user.room_id == user.room_id then
            @isRoom = true
            @roomId = current_user.room_id
          end
        end
      end
      unless @isRoom
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
