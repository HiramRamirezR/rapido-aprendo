import { Controller } from "@hotwired/stimulus"

let counter = 0

// Connects to data-controller="flip"
export default class extends Controller {
  static targets = ["positive", "negative", "label", "number", "bar"]

  substract() {
    if (counter > 0 + 1) {
      counter--
      this.positiveTarget.classList.remove('d-none')
    } else {
      counter--
      this.negativeTarget.classList.add('d-none')
    }
    this.labelTarget.innerText = `Has revisado ${counter} de ${this.numberTarget.innerText} flashcards`
    this.barTarget.value = (100 / Number(this.numberTarget.innerText)) * counter
  }

  add() {
    if (counter < Number(this.numberTarget.innerText) - 1) {
      counter++
      this.negativeTarget.classList.remove('d-none')
    } else {
      this.positiveTarget.classList.add('d-none')
      counter++
    }
    this.labelTarget.innerText = `Has revisado ${counter} de ${this.numberTarget.innerText} flashcards`
    this.barTarget.value = (100 / Number(this.numberTarget.innerText)) * counter
  }
}
