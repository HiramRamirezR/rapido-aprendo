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
task1 = Task.create(title: "Trabajando con vocales.", details: "En esta tarea vas a trabajar los sonidos de la R combinandolos con todas las bocales, esto puede resultar difícil al principio, pero no te preocupes, mientras avanzas con tus flashcards cada día veras que poco a poco se hace más fácil.", video: "https://res.cloudinary.com/luda9/video/upload/v1662665601/development/trabajandoConVocales_xy2fdm.mp4")
task2 = Task.create(title: "Ejercicios con materiales.", details: "En esta tarea vas a hacer varios ejercicios usando diferentes materiales, todos los materiales son cosas comunes que tienes en tu casa, pero si te hace falta algo no te preocupes, puedes facilmente remplazarlo por otra cosa que cumpla una función similar. Si tienes muchas dudas, consulta con tu logopeda para que te oriente.", video: "https://res.cloudinary.com/luda9/video/upload/v1662665602/development/trabajandoConMateriales_h8erhj.mp4")
task3 = Task.create(title: "Práctica con espejo.", details: "En esta tarea te vas a divertir bastante. Necesitarás un espejo para poder observar detalladamente los movimientos que realizas con tu lengua. Trata de igualar lo mejor que puedas lo mejor que puedas cada uno de los movimientos de lengua que se indican en las flashcards.", video: "https://res.cloudinary.com/luda9/video/upload/v1662665601/development/practicaConEspejo_trukoa.mp4")
task4 = Task.create(title: "Ejercicios con globos.", details: "En esta tarea vamos a utilizar globos y mucho aire de tus pulmones, realiza cada uno de los ejercicios de las flashcards con cuidado. Hazlo despacio para evitar que te marees, si te sientes mal, toma un descanzo y continua cuando te sientas mejor.", video: "https://res.cloudinary.com/luda9/video/upload/v1662665602/development/ejerciciosConGlobos_nqmzpl.mp4")
task5 = Task.create(title: "Lectura.", details: "En esta tarea vamos a leer textos cortos. Para hacerla necesitaras la ayuda de un compañero que te escuche y te ayude a darte cuenta en donde puedes mejorar.", video: "https://res.cloudinary.com/luda9/video/upload/v1662665600/development/lectura_snncez.mp4")
task6 = Task.create(title: "Ejercicios para el fonema /r/.", details: "En esta tarea vamos a trabajar con pequeños trabalenguas. Leelos despacio y trata de memorizarlos, luego dilos con la mayor claridad posible, poco a poco ve aumentando la velocidad al decirlos.", video: "https://res.cloudinary.com/luda9/video/upload/v1662665604/development/ejerciciosParaFonemaR_mupq0z.mp4")
task7 = Task.create(title: "Praxias bocofonatorias.", details: "En esta tarea vas a realizar diferentes movimientos con la boca, con la lengua y hasta con las manos. Vas a necesitar un compañero que te ayude a verificar que lo estas haciendo correctamente.", video: "https://res.cloudinary.com/luda9/video/upload/v1662665599/development/praxiasBocofanatorias_ksfcqa.mp4")

Assignment.destroy_all
assignment1 = Assignment.create(initial: Date.today, final: Date.today, done: true, user: user1, task: task1)
assignment2 = Assignment.create(initial: Date.today, final: Date.today, done: true, user: user1, task: task2)
assignment3 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user1, task: task3)
assignment4 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user1, task: task4)
assignment5 = Assignment.create(initial: Date.today, final: Date.today, done: true, user: user1, task: task5)
assignment6 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user1, task: task6)
assignment7 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user1, task: task7)

assignment1 = Assignment.create(initial: Date.today, final: Date.today, done: true, user: user2, task: task1)
assignment2 = Assignment.create(initial: Date.today, final: Date.today, done: true, user: user2, task: task2)
assignment3 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user2, task: task3)
assignment4 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user2, task: task4)
assignment5 = Assignment.create(initial: Date.today, final: Date.today, done: true, user: user2, task: task5)
assignment6 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user2, task: task6)
assignment7 = Assignment.create(initial: Date.today, final: Date.today, done: false, user: user2, task: task7)

Flashcard.destroy_all
flashcard = Flashcard.create(task: task1, content: "Nutella", answer: "Unta nutella alrededor de los labios. Luego, con movimientos circulares de la lengua trata de limpiarla toda.",  image: "https://res.cloudinary.com/luda9/image/upload/v1662745692/development/nutella_ex4sxh.gif")
flashcard = Flashcard.create(task: task1, content: "Globo", answer: "Respira profundamente, inhala tanto aire como puedas e infla un globo con un solo soplido.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/globo_ahf5bt.gif")
flashcard = Flashcard.create(task: task1, content: "Lápiz", answer: "Coloca un lápiz entre tus dientes y platica con alguien más esforzándote por hablar lo más claro posible.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/lapiz_epv9j2.gif")
flashcard = Flashcard.create(task: task1, content: "Taquitos", answer: "Practica frente a un espejo enrollar la lengua como un taquito.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/taquito_rwu0so.gif")

flashcard = Flashcard.create(task: task2, content: "Motor", answer: "Sopla aire con la boca cerrada y pon tus labios muy relajados para que al salir el aire provoquen el suave sonido de un motor.", image: "")
flashcard = Flashcard.create(task: task2, content: "Elevación", answer: "Eleva la punta de la lengua hasta arriba de los dientes superiores (por dentro).", image: "https://res.cloudinary.com/luda9/image/upload/v1662745692/development/arriba_gh6let.gif")
flashcard = Flashcard.create(task: task2, content: "Hacia atrás", answer: "Dirige la lengua hacia atrás. Recorre con la punta todo el paladar y chócala con los dientes de arriba.", image: "")
flashcard = Flashcard.create(task: task2, content: "Respiración lenta y violenta", answer: "Inspira por la nariz lentamente, luego expulsa el aire violentamente moviendo los labios.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/respirar_rdoooh.gif")
flashcard = Flashcard.create(task: task2, content: "Vibración", answer: "Ahora intenta que vibre tu lengua cuando expulsas el aire.", image: "")

flashcard = Flashcard.create(task: task3, content: "Nutella", answer: "Unta nutella alrededor de los labios. Luego, con movimientos circulares de la lengua trata de limpiarla toda.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745692/development/nutella_ex4sxh.gif")
flashcard = Flashcard.create(task: task3, content: "Globo", answer: "Respira profundamente, inhala tanto aire como puedas e infla un globo con un solo soplido.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/globo_ahf5bt.gif")
flashcard = Flashcard.create(task: task3, content: "Lápiz", answer: "Coloca un lápiz entre tus dientes y platica con alguien más esforzándote por hablar lo más claro posible.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/lapiz_epv9j2.gif")

flashcard = Flashcard.create(task: task4, content: "Taquitos", answer: "Practica frente a un espejo enrollar la lengua como un taquito.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/taquito_rwu0so.gif")
flashcard = Flashcard.create(task: task4, content: "Motor", answer: "Sopla aire con la boca cerrada y pon tus labios muy relajados para que al salir el aire provoquen el suave sonido de un motor.", image: "")

flashcard = Flashcard.create(task: task5, content: "Elevación", answer: "Eleva la punta de la lengua hasta arriba de los dientes superiores (por dentro).", image: "https://res.cloudinary.com/luda9/image/upload/v1662745692/development/arriba_gh6let.gif")
flashcard = Flashcard.create(task: task5, content: "Hacia atrás", answer: "Dirige la lengua hacia atrás. Recorre con la punta todo el paladar y chócala con los dientes de arriba.", image: "")
flashcard = Flashcard.create(task: task5, content: "Respiración lenta y violenta", answer: "Inspira por la nariz lentamente, luego expulsa el aire violentamente moviendo los labios.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/respirar_rdoooh.gif")
flashcard = Flashcard.create(task: task5, content: "Vibración", answer: "Ahora intenta que vibre tu lengua cuando expulsas el aire.", image: "")

flashcard = Flashcard.create(task: task6, content: "Nutella", answer: "Unta nutella alrededor de los labios. Luego, con movimientos circulares de la lengua trata de limpiarla toda.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745692/development/nutella_ex4sxh.gif")
flashcard = Flashcard.create(task: task6, content: "Globo", answer: "Respira profundamente, inhala tanto aire como puedas e infla un globo con un solo soplido.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/globo_ahf5bt.gif")
flashcard = Flashcard.create(task: task6, content: "Lápiz", answer: "Coloca un lápiz entre tus dientes y platica con alguien más esforzándote por hablar lo más claro posible.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/lapiz_epv9j2.gif")
flashcard = Flashcard.create(task: task6, content: "Taquitos", answer: "Practica frente a un espejo enrollar la lengua como un taquito.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/taquito_rwu0so.gif")
flashcard = Flashcard.create(task: task6, content: "Motor", answer: "Sopla aire con la boca cerrada y pon tus labios muy relajados para que al salir el aire provoquen el suave sonido de un motor.", image: "")

flashcard = Flashcard.create(task: task7, content: "Elevación", answer: "Eleva la punta de la lengua hasta arriba de los dientes superiores (por dentro).", image: "https://res.cloudinary.com/luda9/image/upload/v1662745692/development/arriba_gh6let.gif")
flashcard = Flashcard.create(task: task7, content: "Hacia atrás", answer: "Dirige la lengua hacia atrás. Recorre con la punta todo el paladar y chócala con los dientes de arriba.", image: "")
flashcard = Flashcard.create(task: task7, content: "Respiración lenta y violenta", answer: "Inspira por la nariz lentamente, luego expulsa el aire violentamente moviendo los labios.", image: "https://res.cloudinary.com/luda9/image/upload/v1662745693/development/respirar_rdoooh.gif")
