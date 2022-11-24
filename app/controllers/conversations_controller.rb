class ConversationsController < ApplicationController
  def all_conversation
  end

  def show
    # @message = Message.new
    @conversation = Conversation.find(params[:id])
  end
end
