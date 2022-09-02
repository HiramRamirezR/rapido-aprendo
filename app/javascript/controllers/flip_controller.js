import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip"
export default class extends Controller {
  static targets = ["flipper"]

  flipCard() {
    this.flipperTarget.classList.toggle('is-flipped');
  }
}
