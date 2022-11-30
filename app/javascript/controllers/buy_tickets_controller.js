import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="buy-tickets"

export default class extends Controller {
    static targets = ["buyButton", "showButton"]
    static values = {
      eventId: Number
    }

  connect() {
    this.showButtonTarget.hidden = true
  }

  buyTickets() {
    fetch("/events/" + this.eventIdValue + "/tickets")
    this.buyButtonTarget.hidden = true
    this.showButtonTarget.hidden = false
  }
}
