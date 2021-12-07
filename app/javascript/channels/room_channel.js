import consumer from "./consumer"

consumer.subscriptions.create({ channel: "RoomChannel", room_id: 1 }, {

  connected(){
    console.log("Connected to room 1")
  },

  disconnected() {

  },

  received(data) {
    console.log("Recieved...")
    console.log(data.html)
    const messageContainer = document.getElementById('room_messages')
    messageContainer.innerHTML = data.html

  }


});