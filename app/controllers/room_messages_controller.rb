#Controller for all messages
class RoomMessagesController < ApplicationController
  before_action :load_entities

  puts '********RoomMessagesController**********'

  def create
    puts '********Creating**********'
    @room_message = RoomMessage.new(message_params)
    @room_message.user = current_user
    @room_message.room = @room
    @room_message.save
    @room_messages = @room.room_messages
    html = render partial: 'rooms/room_message', collection: @room_messages, @room_message => :room_message
    puts '**********BROADCASTING***************'
    ActionCable.server.broadcast("room_channel_#{@room_message.room_id}", html: html)
  end

  protected

  def load_entities
    @room = Room.find params.dig(:room_message, :room_id)
  end

  def message_params
    params.require(:room_message).permit(:message, :user, :room, :room_id)
  end
end
