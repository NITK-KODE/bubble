class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_main"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
