class MessagesController < ApplicationController
	before_action :authenticate_user!, :only => [:create]

	def create
		#rooms/show.html.erbで送られてきたform_forで送られてきたcontentを含む全てのメッセージの情報の:messageと:room_idのキーが存在しているならば
		if Entry.where(:user_id => current_user.id, :room_id => params[:message][:room_id]).present?
			@message = Message.create(params.require(:message).permit(:user_id, :content, :room_id).merge(:user_id => current_user.id))
			redirect_to "/rooms/#{@message.room_id}"
		else
			redirect_back(fallback_location: root_path)
		end
	end
end
