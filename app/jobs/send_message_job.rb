class SendMessageJob < ApplicationJob
  queue_as :default

  def perform(room_message)

    puts "**********SendMessageJob**********"
    puts room_message
    puts room_message.message
    puts room_message.room
    puts room_message.room.name
    puts room_message.room.id


    sender = ApplicationController.render(
      'rooms/show',
      locals: {room_message: @room_message, room_id: @room_message.room.id} 
    )

    #reciever = ApplicationController.render(
    #  'rooms/message',
    #  locals: {message: room_message}
    #)    

    puts "Broadcasting..."
    ActionCable.server.broadcast("room_channel_#{@room_message.room_id}", sender: sender,room_message: room_message)
  end


end
