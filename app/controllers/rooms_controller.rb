class RoomsController < ApplicationController
	before_action :authenticate_user!
  def create
    #users/show.html.erbのform_forの@roomで送られてきたパラメータをここで受け取りcreateさせる
    @room = Room.create
    #現在ログインしているユーザー
    @entry1 = Entry.create(:room_id => @room.id, :user_id => current_user.id)
    #相手のユーザーの情報をEntriesテーブルに保存するためusers/show.html.erbのfields_for @entryで保存したparamsの情報(:user_id, :room_id)を許可し、現在ログインしているユーザーと同じく@roomにひもづくidを保存する
    @entry2 = Entry.create(params.require(:entry).permit(:user_id, :room_id).merge(:room_id => @room.id))
    #チャットルームが開く
    redirect_to room_path(@room.id)
  end

  def show
    #一つのチャットルームを表示させる
    @room = Room.find(params[:id])
    #現在ログインしているユーザーのidとそれにひもづいたチャットルームのidがあるならば
    if Entry.where(:user_id => current_user.id, :room_id => @room.id).present?
      #Messageテーブルにそのチャットルームのidと紐づいたメッセージを表示させる
      @messages = @room.messages
      #新しくメッセージを作成する場合はメッセージのインスタンスを生成する
      @message = Message.new
      #rooms/show.html.erbmでユーザーの名前などの情報を表示させるために、@room.entriesを@entriesというインスタンス変数に入れ、Entriesテーブルのuser_idの情報を取得する
      @entries = @room.entries
    else
      redirect_back(fallback_location: root_path)
    end
  end
end
