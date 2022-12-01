import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["dateInput"]

  connect() {
    // console.log(this.element);
    this.dateInputTarget.name = 'date[]'
  }
}
