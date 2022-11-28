import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="refresh-markers"
export default class extends Controller {
  static targets = ["categories", "mapRefresh", "child"]

  connect() {
    // const filterMarkers = new CustomEvent("updateMap");
    // window.dispatchEvent(filterMarkers);
    // console.log(this.childTarget)
  }

//   update(event) {
//     event.preventDefault()
//     console.log(event.target.id)
//   }
    test() {
      this.childTarget.dispatchEvent(new CustomEvent("updateMap", {
        detail: {
          message: "Hello"
        }
      }))
    }
}

// class MyController extends Controller {
//   static targets = [ "other" ]

//   copy() {
//     const otherController = this.application.getControllerForElementAndIdentifier(this.otherTarget, 'other')
//     otherController.otherMethod()
//   }
// }
