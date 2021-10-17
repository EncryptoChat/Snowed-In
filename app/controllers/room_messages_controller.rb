class RoomMessagesController < ApplicationController
  before_action :load_entities

  def create
    @room_message = RoomMessage.create user: current_user,
                                       room: @room,
                                       message: params.dig(:room_message, :message)
    
    ActionCable.server.broadcast("room_My Room", {body: @room_message})
    #RoomChannel.broadcast_to("room_My Room", @room_message)
  end

  protected

  def load_entities
    @room = Room.find params.dig(:room_message, :room_id)
  end
end
