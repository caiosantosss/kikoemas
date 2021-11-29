import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    allowInput: true,
    enableTime: true,
  });
}

export { initFlatpickr };
