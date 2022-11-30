import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="send-message"
export default class extends Controller {
  static targets = ["form", "content", "button"]
  static values = {
    userId: Number
  }

  connect() {

  }

  sendMessage(event) {
    event.preventDefault()
    fetch(this.formTarget.action + "?content=" + this.contentTarget.value)
    this.buttonTarget.click()
    this.buttonTarget.innerText = "Message sent"
  }
}
