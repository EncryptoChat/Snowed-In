class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel_#{params[:room_id]}"

    #room = Room.find params[:room]
    #stream_for room
  end

  def unsubscribed
    #unsuscribe from channel
  end

  def recieve(data)
    #ActionCable.server.broadcast(:room_id, :data)
  end  

end
