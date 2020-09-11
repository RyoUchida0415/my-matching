class UsersController < ApplicationController
  def index
        #別の性別を表示させるようにしたい
        #if User.where(:sex => 'true')
          #@users = User.where(sex: 'false')
        #elsif User.where(:sex => 'false')
          #@users = User.where(sex: 'true')
        #end
        @users = User.all
      end

      def show
        @user = User.find(params[:id])
        @blogs = Blog.where(user_id: @user.id)

        #メッセージ機能
        #現在ログインしているユーザーと相手のユーザを探している
        @currentUserEntry=Entry.where(user_id: current_user.id)
        @userEntry=Entry.where(user_id: @user.id)
        #現在ログインしているユーザーでないならば
        unless @user.id == current_user.id
          @currentUserEntry.each do |current_user|
            @userEntry.each do |user|
              #現在ログインしているユーザーのroom_idと相手のユーザーのroom_idが同じならば
              if current_user.room_id == user.room_id then
                @isRoom = true
                @roomId = current_user.room_id
              end
            end
          end
          #roomが作成されていないならば
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