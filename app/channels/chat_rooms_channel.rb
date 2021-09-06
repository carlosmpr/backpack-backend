class ChatRoomsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    chat_room = ChatRoom.find(params[:id])
      stream_from chat_room.id

  end


  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
