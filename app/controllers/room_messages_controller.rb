class RoomMessagesController < ApplicationController
  before_action :load_entities

  def create
    @room_message = RoomMessage.new(message_params)
    @room_message.user = current_user
    @room_message.room = @room
    @room_message.save

    @room_messages = @room.room_messages
    
    puts "********RoomMessagesController**********"
    puts @room_message
    puts @room_message.message
    puts @room_message.room
    puts @room
    puts @room.name
    puts @room_message.room.name
    puts @room.id
    puts @room_message.room_id
    puts @room_message.user
    puts @room_message.user.username
    puts @room_messages
    puts @room.room_messages

    html = render 'rooms/show', 
      locals: {
        @room => :room, @room_message => :room_message, @room_messages => :room_messages
      }
    
    puts "**********AfterRender*****************"
    puts html
    #puts html.room_message
    puts " **********DONE***************"

    ActionCable.server.broadcast("room_channel_#{@room_message.room_id}", html: html)

    #SendMessageJob.perform_later(@room_message)
    
  end

  protected

  def load_entities
    @room = Room.find params.dig(:room_message, :room_id)
  end

  def message_params
    params.require(:room_message).permit(:message, :user, :room)
  end

end
