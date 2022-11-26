import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-description"
export default class extends Controller {
  static targets = ["pencil", "description", "input", "form", "close"]

  connect() {
    // console.log(this.closeTarget);
  }

  open(event) {
    event.preventDefault()
    this.formTarget.classList.remove("d-none");
  }

  close(event) {
    event.preventDefault()
    this.formTarget.classList.add("d-none");
  }

  // update(event) {
  //   event.preventDefault()
  //   this.descriptionTarget.innerText = this.inputTarget.innerText
  // }
}
