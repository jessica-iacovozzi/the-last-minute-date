class ConversationsController < ApplicationController
  def show
    @message = Message.new
    @conversation = Conversation.find(params[:id])
  end
end
