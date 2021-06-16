class ChatChannel < ApplicationCable::Channel
  def subscribed
    project = Project.find(params[:id])

    stream_from "chat:#{project.id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
