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
task1 = Task.create(title: "Trabajando con vocales.", details: "4 Flashcards.")
task2 = Task.create(title: "Ejercicios con materiales.", details: "5 Flashcards.")
task3 = Task.create(title: "Práctica con espejo.", details: "3 Flashcards.")
task4 = Task.create(title: "Ejercicios con globos.", details: "2 Flashcard.")
task5 = Task.create(title: "Lectura.", details: "4 Flashcards.")
task6 = Task.create(title: "Sílabas.", details: "5 Flashcards.")
task7 = Task.create(title: "Ejercicios para el fonema /r/.", details: "3 Flashcards.")
task8 = Task.create(title: "Praxias bocofonatorias.", details: "5 Flashcards.")

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
flashcard = Flashcard.create(task: task1, content: "Nutella", answer: "Unta nutella alrededor de los labios. Luego, con movimientos circulares de la lengua trata de limpiarla toda.")
flashcard = Flashcard.create(task: task1, content: "Globo", answer: "Respira profundamente, inhala tanto aire como puedas e infla un globo con un solo soplido.")
flashcard = Flashcard.create(task: task1, content: "Lápiz", answer: "Coloca un lápiz entre tus dientes y platica con alguien más esforzándote por hablar lo más claro posible.")
flashcard = Flashcard.create(task: task1, content: "Taquitos", answer: "Practica frente a un espejo enrollar la lengua como un taquito.")

flashcard = Flashcard.create(task: task2, content: "Motor", answer: "Sopla aire con la boca cerrada y pon tus labios muy relajados para que al salir el aire provoquen el suave sonido de un motor.")
flashcard = Flashcard.create(task: task2, content: "Elevación", answer: "Eleva la punta de la lengua hasta arriba de los dientes superiores (por dentro).")
flashcard = Flashcard.create(task: task2, content: "Hacia atrás", answer: "Dirige la lengua hacia atrás. Recorre con la punta todo el paladar y chócala con los dientes de arriba.")
flashcard = Flashcard.create(task: task2, content: "Respiración lenta y violenta", answer: "Inspira por la nariz lentamente, luego expulsa el aire violentamente moviendo los labios.")
flashcard = Flashcard.create(task: task2, content: "Vibración", answer: "Ahora intenta que vibre tu lengua cuando expulsas el aire.")

flashcard = Flashcard.create(task: task3, content: "Nutella", answer: "Unta nutella alrededor de los labios. Luego, con movimientos circulares de la lengua trata de limpiarla toda.")
flashcard = Flashcard.create(task: task3, content: "Globo", answer: "Respira profundamente, inhala tanto aire como puedas e infla un globo con un solo soplido.")
flashcard = Flashcard.create(task: task3, content: "Lápiz", answer: "Coloca un lápiz entre tus dientes y platica con alguien más esforzándote por hablar lo más claro posible.")

flashcard = Flashcard.create(task: task4, content: "Taquitos", answer: "Practica frente a un espejo enrollar la lengua como un taquito.")
flashcard = Flashcard.create(task: task4, content: "Motor", answer: "Sopla aire con la boca cerrada y pon tus labios muy relajados para que al salir el aire provoquen el suave sonido de un motor.")

flashcard = Flashcard.create(task: task5, content: "Elevación", answer: "Eleva la punta de la lengua hasta arriba de los dientes superiores (por dentro).")
flashcard = Flashcard.create(task: task5, content: "Hacia atrás", answer: "Dirige la lengua hacia atrás. Recorre con la punta todo el paladar y chócala con los dientes de arriba.")
flashcard = Flashcard.create(task: task5, content: "Respiración lenta y violenta", answer: "Inspira por la nariz lentamente, luego expulsa el aire violentamente moviendo los labios.")
flashcard = Flashcard.create(task: task5, content: "Vibración", answer: "Ahora intenta que vibre tu lengua cuando expulsas el aire.")

flashcard = Flashcard.create(task: task6, content: "Nutella", answer: "Unta nutella alrededor de los labios. Luego, con movimientos circulares de la lengua trata de limpiarla toda.")
flashcard = Flashcard.create(task: task6, content: "Globo", answer: "Respira profundamente, inhala tanto aire como puedas e infla un globo con un solo soplido.")
flashcard = Flashcard.create(task: task6, content: "Lápiz", answer: "Coloca un lápiz entre tus dientes y platica con alguien más esforzándote por hablar lo más claro posible.")
flashcard = Flashcard.create(task: task6, content: "Taquitos", answer: "Practica frente a un espejo enrollar la lengua como un taquito.")
flashcard = Flashcard.create(task: task6, content: "Motor", answer: "Sopla aire con la boca cerrada y pon tus labios muy relajados para que al salir el aire provoquen el suave sonido de un motor.")

flashcard = Flashcard.create(task: task7, content: "Elevación", answer: "Eleva la punta de la lengua hasta arriba de los dientes superiores (por dentro).")
flashcard = Flashcard.create(task: task7, content: "Hacia atrás", answer: "Dirige la lengua hacia atrás. Recorre con la punta todo el paladar y chócala con los dientes de arriba.")
flashcard = Flashcard.create(task: task7, content: "Respiración lenta y violenta", answer: "Inspira por la nariz lentamente, luego expulsa el aire violentamente moviendo los labios.")

flashcard = Flashcard.create(task: task8, content: "Vibración", answer: "Ahora intenta que vibre tu lengua cuando expulsas el aire.")
flashcard = Flashcard.create(task: task8, content: "Nutella", answer: "Unta nutella alrededor de los labios. Luego, con movimientos circulares de la lengua trata de limpiarla toda.")
flashcard = Flashcard.create(task: task8, content: "Globo", answer: "Respira profundamente, inhala tanto aire como puedas e infla un globo con un solo soplido.")
flashcard = Flashcard.create(task: task8, content: "Lápiz", answer: "Coloca un lápiz entre tus dientes y platica con alguien más esforzándote por hablar lo más claro posible.")
flashcard = Flashcard.create(task: task8, content: "Taquitos", answer: "Practica frente a un espejo enrollar la lengua como un taquito.")
