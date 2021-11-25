import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['infos'];

  displayCard() {
    this.infosTarget.classList.toggle('d-none');
  }
}
