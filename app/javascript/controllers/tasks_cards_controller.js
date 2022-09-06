import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tasks-cards"
export default class extends Controller {
  connect() {
    const fondos = ["fondo1", "fondo5", "fondo2"];
    const tarjetas = document.querySelectorAll(".tasks-card-fondo")

    tarjetas.forEach((tarjeta, index) => {
      // tarjeta.classList.add(fondos[Math.floor ( Math.random() * fondos.length )])
      tarjeta.classList.add(fondos[index])
    });
  }
}
