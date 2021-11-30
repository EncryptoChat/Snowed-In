class RoomMessagesController < ApplicationController
  before_action :load_entities

  def create
    @room_message = RoomMessage.new(message_params)
    @room_message.user = current_user
    @room_message.room = @room
    @room_message.save
    
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

    #sender = ApplicationController.render(
     # 'rooms/show',
      #locals: :room_message @room_message, :room @room 
    #)
    
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
