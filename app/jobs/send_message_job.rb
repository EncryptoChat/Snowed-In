class SendMessageJob < ApplicationJob
  queue_as :default

  def perform(room_message)

    puts "**********SendMessageJob**********"
    puts room_message
    puts room_message.message
    puts room_message.room
    puts room_message.room.name
    puts room_message.room.id
    puts room_message.user.username


    #ApplicationController.render 'rooms/show', 
    #locals: {
      #@room => :room, @room_message => :room_message, @room_messages => :room_messages
    #}


    #reciever = ApplicationController.render(
    #  'rooms/message',
    #  locals: {message: room_message}
    #)    

    puts "Broadcasting..."
    ActionCable.server.broadcast("room_channel_#{@room_message.room_id}", sender: sender,room_message: room_message)
  end


end
