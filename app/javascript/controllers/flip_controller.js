import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip"
export default class extends Controller {
  static targets = ["flipper"]

  connect() {
    const fondos = ["fc-fondo1", "fc-fondo2", "fc-fondo3", "fc-fondo4", "fc-fondo5"];
    const tarjetas = document.querySelectorAll(".card-face-front")
    const headers = document.querySelectorAll(".card-header")

    tarjetas.forEach((tarjeta, index) => {
      tarjeta.classList.add(fondos[index])
    });

    headers.forEach((header, index) => {
      header.classList.add(fondos[index])
    });
  }

  flipCard() {
    this.flipperTarget.classList.toggle('is-flipped');
  }
}
