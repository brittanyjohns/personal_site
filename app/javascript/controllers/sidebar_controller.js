import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sidebar"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus! SIDEBAR", this.element)
  }
  click(event) {
    this.targetId = event.target.dataset.targetId
    window.location = `/#${this.targetId}`
  }
}
