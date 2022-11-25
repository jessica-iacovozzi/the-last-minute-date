class ConversationsController < ApplicationController
  def all_conversation
    @convertation = Conversation.all
  end

  def show
    # @message = Message.new
    @conversation = Conversation.find(params[:id])
  end
end
