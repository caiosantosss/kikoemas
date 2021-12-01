import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    allowInput: true,
    enableTime: true,
    minDate: "today",
    minuteIncrement: 30,
    disableMobile: "true"
  });
}

export { initFlatpickr };
