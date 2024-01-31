import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sidebar"
export default class extends Controller {
  // static targets = [ "about" ]
  connect() {
    console.log("Hello, Stimulus! SIDEBAR", this.element)

  }
  click(event) {
    console.log(event)
    this.sourceElementData = event.target.dataset
    this.targetId = this.sourceElementData.targetId
    window.location.href = `#${this.targetId}`
    console.log("targetId",this.targetId)
    console.log("About")
  }
}
