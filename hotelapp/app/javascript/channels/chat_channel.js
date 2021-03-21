import consumer from "./consumer"

consumer.subscriptions.create("ChatChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = 
      `<p>${data.from.attributes.name}</p>
       <p>${data.name}</p>
       <p>${data.content.message}</p>`;
    const chats = document.getElementById('chats');
    chats.insertAdjacentHTML('afterbegin', html);
    const newChat = document.getElementById('chat_message');
    const newChatBy = document.getElementById('chat_by')
    const newChatId = document.getElementById('chat_from_id')
    newChat.value='';
    newChatBy.value='';
    newChatId.value='1';
  }
});
