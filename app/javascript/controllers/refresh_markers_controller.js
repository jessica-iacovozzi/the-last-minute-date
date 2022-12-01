import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="refresh-markers"
export default class extends Controller {
  static targets = ["categories", "mapRefresh", "child"]

  connect() {
    // console.log(this.modalTarget);
  }

  passIdToMapController(event) {
    const id = event.target.id
    this.childTarget.dispatchEvent(new CustomEvent("updateMap", {
      detail: {
        id: id
      }
    }))
  }

  // clearUrl(event) {
  //   event.preventDefault()
  //   console.log(URLSearchParams);
  //   if (typeof URLSearchParams !== 'undefined') {
  //     window.history.pushState({}, document.title, "/");
  //   } else {
  //     console.log(`Your browser ${navigator} does not support URLSearchParams`)
  //   }
  // }
}
