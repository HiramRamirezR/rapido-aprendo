import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-color-show"
export default class extends Controller {
  connect() {
    const colores = ["color1", "color2", "color3", "color4"];
    const tasks = document.querySelectorAll(".task-color-show")

    tasks.forEach((task, index) => {
      // task.classList.add(fondos[Math.floor ( Math.random() * fondos.length )])
      task.classList.add(colores[index])
    });
  }
}
