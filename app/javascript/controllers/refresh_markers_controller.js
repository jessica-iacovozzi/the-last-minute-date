import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="refresh-markers"
export default class extends Controller {
  static targets = ["categories", "mapRefresh", "child", "modal", "form"]

  connect() {

  }

  passIdToMapController(event) {
    const id = event.target.id
    this.childTarget.dispatchEvent(new CustomEvent("updateMap", {
      detail: {
        id: id
      }
    }))
  }
}
