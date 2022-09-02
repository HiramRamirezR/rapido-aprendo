# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "date"

User.destroy_all
user = User.create(first_name: "Hugo", last_name: "Hernandez", therapist: "true", email: "hugo@gmail.com", password: "hello123")
user = User.create(first_name: "Hiram", last_name: "Ramirez", therapist: "false", email: "hiram@gmail.com", password: "123456")
user = User.create(first_name: "Daniel", last_name: "Santillan", therapist: "false", email: "daniel@gmail.com", password: "hello123")

Task.destroy_all
task = Task.create(title: "Pronunciacion", details: "pronunciar r")
task2 = Task.create(title: "Ejercicios", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
task3 = Task.create(title: "Práctica", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500")
task4 = Task.create(title: "Trabajando con vocales", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500")
task5 = Task.create(title: "Ejercicios con materiales", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
task6 = Task.create(title: "Práctica con espejo", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
task7 = Task.create(title: "Inflar un globo", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
task8 = Task.create(title: "Morder un lápiz", details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")

Assignment.destroy_all
assignment = Assignment.new(initial: Date.today, final: Date.today, done: false)
assignment.user = user
assignment.task = task
assignment.save

Flashcard.destroy_all
flashcard = Flashcard.create(task: task)
flashcard.task = task
flashcard.save

Flashcard.destroy_all
flashcard = Flashcard.create(task: task2)
flashcard.task = task2
flashcard.save

Answer.destroy_all
answer = Answer.create(user: user, flashcard: flashcard)
answer.user = user
answer.flashcard = flashcard
