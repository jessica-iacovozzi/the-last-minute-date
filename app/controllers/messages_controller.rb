class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.sender = current_user

    if @message.save
      ConversationChannel.broadcast_to(
        @conversation,
        message: render_to_string(partial: "conversastions/message", locals: { message: @message }),
        sender_id: @message.sender.id
      )
      head :ok
    else
      render "conversations/show", status: :unprocessable_entity
    end
  end

  def create_message_and_conversation
    @target = User.find(params[:target_id])
    @conversation = Conversation.conversation_exist(current_user.id, @target.id).first
    @message = Message.new(content: params[:content])
    @message.sender = current_user

    unless @conversation
      @conversation = Conversation.new(name: current_user.first_name)
      @conversation.user1_id = current_user.id
      @conversation.user2_id = @target.id
      @conversation.save
    end

    @message.conversation = @conversation
    @message.save
    @event = Event.find(params[:event_id])

    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
