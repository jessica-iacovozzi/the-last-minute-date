class ConversationChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    def subscribed
      conversation = Conversation.find(params[:id])
      stream_for conversation
    end
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
