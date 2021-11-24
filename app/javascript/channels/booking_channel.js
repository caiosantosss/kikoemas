import consumer from "./consumer";

const initBookingCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.bookingId;

    consumer.subscriptions.create({ channel: "BookingChannel", id: id }, {
      received(data) {
        console.log(data); // called when data is broadcast in the cable
      },
    });
  }
}

export { initBookingCable };
