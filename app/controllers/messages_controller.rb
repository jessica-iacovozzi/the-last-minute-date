class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.sender = current_user

    if @message.save
      ConversationChannel.broadcast_to(
        @conversation,
        render_to_string(partial: "conversations/message", locals: { message: @message })
      )
      head :ok
    else
      render "conversations/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :receiver_id)
  end
end
