class UsersController < ApplicationController
  def index
      #ログインしているユーザーの性別がtrue（男性）ならば（boolean型なのでtrueとわざわざ記述する必要なし）
      if current_user.sex
        #全ての女性会員を表示
        @users = User.where(sex: false)
      #ログインしているユーザーの性別がfalse（女性）ならば
      else
        #全ての男性会員を表示
        @users = User.where(sex: true)
      end
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
      @user = User.find(params[:id])
      if @user != current_user
      redirect_to user_path(current_user.id)
      end
    end

      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
        flash[:success] = '会員情報が更新されました！'
        redirect_to user_path(current_user.id)
        else
        flash[:danger] = 'お客様の情報を更新出来ませんでした。空欄の箇所はありませんか？'
        render 'edit'
    end
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to :root
    end

    private
      def user_params
        params.require(:user).permit(:nickname, :prefecture, :introduction, :image)
      end
end