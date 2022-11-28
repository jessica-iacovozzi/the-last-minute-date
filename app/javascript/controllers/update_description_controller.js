import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-description"
export default class extends Controller {
  static targets = ["form"]

  connect() {
    console.log(this.formTarget);
  }

  // open(event) {
  //   event.preventDefault()
  //   this.formTarget.classList.remove("d-none");
  // }

  // close(event) {
  //   event.preventDefault()
  //   this.formTarget.classList.add("d-none");
  // }
}
