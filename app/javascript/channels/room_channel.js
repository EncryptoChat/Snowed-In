import consumer from "./consumer"

var token = document.getElementsByName('csrf-token')[0].content

document.addEventListener('turbolinks:load', () => {
  const room_element = document.getElementById('room_id');
  const room_id = room_element.getAttribute('data-room-id');

  consumer.subscriptions.create({ channel: "RoomChannel", room_id: room_id }, {
    connected(){
      console.log("Connected to room " + room_id)
    },

    disconnected() {
    },
    received(data) {
      const messageContainer = document.getElementById('room_messages')
      messageContainer.innerHTML = data.html
    }
  });
})