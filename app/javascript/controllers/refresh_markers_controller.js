import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="refresh-markers"
export default class extends Controller {
  static targets = ["categories", "mapRefresh"]

  connect() {
    // console.log(this.categoriesTarget)
  }

  update() {
    console.log(this.event.currentTarget)
  }
}
