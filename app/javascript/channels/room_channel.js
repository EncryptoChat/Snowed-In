import consumer from "./consumer"

const roomChannel = consumer.subscriptions.create({ channel: "RoomChannel", room: "My Room" }, {
	received(data) {
		this.appendLine(data)
	},

	appendLine(data) {
    const html = this.createLine(data)
    const element = document.querySelector("[data-chat-room='My Room']")
    element.insertAdjacentHTML("beforeend", html)
  },

  createLine(data) {
    return `
      <article class="chat-line">
        <span class="speaker">${data["sent_by"]}</span>
        <span class="body">${data["body"]}</span>
      </article>
    `
  }

  roomChannel.send({body: data})

})
/*
consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    System.log("Connected to RoomChannel");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    System.log("Disconnected from RoomChannel");
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
  }
});
*/