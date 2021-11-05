class SendMessageJob < ApplicationJob
  queue_as :default

  def perform(room_message)
    html = ApplicationController.render(
      partial: 'rooms/message',
      locals: {message: room_message}
    )    

    ActionCable.server.broadcast("room_channel_#{@room_message.room_id}", html: html)
  end
end
