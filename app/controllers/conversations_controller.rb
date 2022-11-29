class ConversationsController < ApplicationController
  def all_conversation
    @conversations = Conversation.where("user1_id = ? or user2_id = ?", current_user, current_user).order(updated_at: :desc)
  end

  def show
    @message = Message.new
    @user = current_user
    @conversation = Conversation.find(params[:id])
    @message.conversation = @conversation
  end

  def create
    @conversation = Conversation.new(conversation_params)
    @conversation.user1 = current_user
  end

  private

  def conversation_params
    params.require(:conversation).permit(:user2_id)
  end
end
