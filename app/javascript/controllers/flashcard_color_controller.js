import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flashcard-color"
export default class extends Controller {
  connect() {
    const colores = ["color1", "color2", "color3", "color4"];
    const flashcards = document.querySelectorAll(".flashcard-fondo")

    flashcards.forEach((flashcard, index) => {
      // flashcard.classList.add(fondos[Math.floor ( Math.random() * fondos.length )])
      flashcard.classList.add(colores[index])
    });
  }
}
