# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "date"

User.destroy_all
user1 = User.create(first_name: "Hiram", last_name: "Ramirez", therapist: "false", email: "hiram@gmail.com", password: "123456")
user2 = User.create(first_name: "Daniel", last_name: "Santillan", therapist: "false", email: "daniel@gmail.com", password: "hello123")

Task.destroy_all
task1 = Task.create(title: "Pronunciacion", details: "pronunciar r")
task2 = Task.create(title: "Ejercicios", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
task3 = Task.create(title: "Práctica", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500")
task4 = Task.create(title: "Trabajando con vocales", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500")
task5 = Task.create(title: "Ejercicios con materiales", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
task6 = Task.create(title: "Práctica con espejo", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
task7 = Task.create(title: "Inflar un globo", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
task8 = Task.create(title: "Morder un lápiz", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")

Assignment.destroy_all
assignment1 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user1, task: task1)
assignment2 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user1, task: task2)
assignment3 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user1, task: task3)
assignment4 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user1, task: task4)

assignment5 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user2, task: task5)
assignment6 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user2, task: task6)
assignment7 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user2, task: task7)
assignment8 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user2, task: task8)


Flashcard.destroy_all
flashcard = Flashcard.create(task: task1, content: "Nutella", answer: "Unta nutella al rededor de los labios. Luego, con movimientos circulares de la lengua trata de limpiarla toda.")
flashcard = Flashcard.create(task: task1, content: "Globo", answer: "Respira profundamente, inhala tanto arie como pueda e infla un blobo con un solo soplido.")
flashcard = Flashcard.create(task: task1, content: "Lápiz", answer: "Coloca un lápiz entre tus dientes y platica con alguien más esforzándote por hablar lo más claro posible.")
flashcard = Flashcard.create(task: task1, content: "Taquitos", answer: "Practica frente a un espejo enrollar la lengua como un taquito.")
flashcard = Flashcard.create(task: task1, content: "Motor", answer: "Sopla aire con la boca cerrada y pon tus labios muy relajados para que al salir el aire provoquen un suave sonido como un motor.")
flashcard = Flashcard.create(task: task5, content: "Nutella", answer: "Unta nutella al rededor de los labios. Luego, con movimientos circulares de la lengua trata de limpiarla toda.")
flashcard = Flashcard.create(task: task5, content: "Globo", answer: "Respira profundamente, inhala tanto arie como pueda e infla un blobo con un solo soplido.")
flashcard = Flashcard.create(task: task5, content: "Lápiz", answer: "Coloca un lápiz entre tus dientes y platica con alguien más esforzándote por hablar lo más claro posible.")
flashcard = Flashcard.create(task: task5, content: "Taquitos", answer: "Practica frente a un espejo enrollar la lengua como un taquito.")
flashcard = Flashcard.create(task: task5, content: "Motor", answer: "Sopla aire con la boca cerrada y pon tus labios muy relajados para que al salir el aire provoquen un suave sonido como un motor.")
