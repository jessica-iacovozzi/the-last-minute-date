class ConversationsController < ApplicationController
  def all_conversation
    @conversations = Conversation.all
  end

  def show
    @message = Message.new
    @user = current_user
    @conversation = Conversation.find(params[:id])
    @message.conversation = @conversation
  end
end
