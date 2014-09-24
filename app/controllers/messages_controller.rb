class MessagesController < ApplicationController
	def create
		@conversation = Conversation.find(params[:conversation_id])
		@message = Message.new(message_params)
		@message.conversation_id = params[:conversation_id]

		if @message.save
			redirect_to @conversation
		else
			render 'show'
		end

	end

	private
	def message_params
		params.require(:message).permit(:comment, :picture)
	end
end