import consumer from "./consumer";

const initBookingCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.bookingId;
    const current_user_id = messagesContainer.dataset.userId;

    consumer.subscriptions.create({ channel: "BookingChannel", id: id }, {
      received(data) {
        console.log(data); // called when data is broadcast in the cable
        if (current_user_id == data[0]){
          messagesContainer.insertAdjacentHTML('beforeend', data[1]);
        }
        else {
          messagesContainer.insertAdjacentHTML('beforeend', data[2]);
        }
        const messages = messagesContainer.querySelectorAll('.message-container');
        const message = messages[messages.length - 1];
        message.scrollIntoView();
      },
    });
  }
}

export { initBookingCable };
