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

Task.destroy_all
task = Task.create(title: "Pronunciacion", details: "pronunciar r")

Assignment.destroy_all
assignment = Assignment.new(initial: Date.today, final: Date.today, done: false)
assignment.user = user
assignment.task = task
assignment.save


Flashcard.destroy_all
flashcard = Flashcard.create(task: task)
flashcard.task = task
flashcard.save

Answer.destroy_all
answer = Answer.create(user: user, flashcard: flashcard)
answer.user = user
answer.flashcard = flashcard
