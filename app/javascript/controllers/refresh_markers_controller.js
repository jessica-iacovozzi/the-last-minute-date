import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="refresh-markers"
export default class extends Controller {
  static targets = ["categories", "mapRefresh", "child", "modal"]

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


  // <script>$('#exampleModal').on('show.bs.modal', function (event) {
  //   var button = $(event.relatedTarget) // Button that triggered the modal
  //   var recipient = button.data('whatever') // Extract info from data-* attributes
  //   // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  //   // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  //   var modal = $(this)
  //   modal.find('.modal-title').text('New message to ' + recipient)
  //   modal.find('.modal-body input').val(recipient)
  // })</script>
}
