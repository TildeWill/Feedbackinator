50.times{User.create(username: Faker::Internet.user_name, password_digest: "password", cohort:["Caterpillars","Newts","Woodchucks"].sample)}

100.times{Feedback.create(title: ["dishes","cleaning","EE", "Instructors", "Curriculum"].sample, content: Faker::Lorem.word, user_id: rand(1..50), category_id: rand(1..3), private_public: [true, false].sample)}

#seeded small sample of teachers for feedback 
User.create(username: "Sam Blackman", password_digest: "password", cohort: "Staff")
User.create(username: "Alex Flores", password_digest: "password", cohort: "Staff")
User.create(username: "Nikola Savic", password_digest: "password", cohort: "Staff")
User.create(username: "Rebecca Miller-Webster", password_digest: "password", cohort: "Staff")
User.create(username: "Tanner Welsh", password_digest: "password", cohort: "Staff")
User.create(username: "Matt Bundy", password_digest: "password", cohort: "Staff")

# Seed cohort members to submit feedback
User.create(username: "Adam Hardy", password_digest: "password", cohort: "Newts")
User.create(username: "Alan Florendo", password_digest: "password", cohort: "Newts")
User.create(username: "Anthony Edwards Jr", password_digest: "password", cohort: "Newts")
User.create(username: "Avi Fox-Rosen", password_digest: "password", cohort: "Newts")
User.create(username: "Cassie Moy", password_digest: "password", cohort: "Newts")
User.create(username: "David Sin", password_digest: "password", cohort: "Newts")
User.create(username: "Derek Siker", password_digest: "password", cohort: "Newts")
User.create(username: "Dylan Krause", password_digest: "password", cohort: "Newts")
User.create(username: "Dylan Richards", password_digest: "password", cohort: "Newts")
User.create(username: "Elz Yawili", password_digest: "password", cohort: "Newts")
User.create(username: "Eric Hou", password_digest: "password", cohort: "Newts")
User.create(username: "Fahia Mohamed", password_digest: "password", cohort: "Newts")
User.create(username: "Farheen Malik", password_digest: "password", cohort: "Newts")
User.create(username: "Hilary Barr", password_digest: "password", cohort: "Newts")
User.create(username: "John Berry", password_digest: "password", cohort: "Newts")
User.create(username: "Julius Jung", password_digest: "password", cohort: "Newts")
User.create(username: "Justin Lee", password_digest: "password", cohort: "Newts")
User.create(username: "Michael Weiss", password_digest: "password", cohort: "Newts")
User.create(username: "Molly Huerster", password_digest: "password", cohort: "Newts")
User.create(username: "Rootul Patel", password_digest: "password", cohort: "Newts")
User.create(username: "Stephen Estrada", password_digest: "password", cohort: "Newts")
User.create(username: "Alan Cohen", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Alexander Le", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Alexei Pesic", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Audrey McGowan", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Bruno Pasini", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Chase Blokker", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Daniel Deepak", password_digest: "password", cohort: "Caterpillars")
User.create(username: "David Bragdon", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Derek Johnson", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Edward Kim", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Eric Shemtov", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Garrett Dalton", password_digest: "password", cohort: "Caterpillars")
User.create(username: "George Zeng", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Joseph White", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Justin Wagner", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Kimberly Brewer", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Max Lock", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Nick Giovacchini", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Patti O'Neill", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Ryan Storberg", password_digest: "password", cohort: "Caterpillars")
User.create(username: "Adrian Soghoian", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Alexis Ernst", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Armen Vartan", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Ben Brostoff", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Brenden Susens-Jackson", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Chantelle Turnbull", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Christian Moon", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Gregory Knudsen", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Gregory Piccolo", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Ian Shuff", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Jake Wayne", password_digest: "password", cohort: "Woodchucks")
User.create(username: "John Quigley", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Joseph Cohen", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Kai Prout", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Katie Reiner", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Kennedy Bhagwandeen", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Kenneth Mendonca", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Matthieu Gavaudan", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Michael Drew Teter", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Natalie Baer", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Richard Macias", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Siddharth Patel", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Stella Kim", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Victor Schaeperkoetter", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Vivek George", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Yariv Kirschner", password_digest: "password", cohort: "Woodchucks")
User.create(username: "Antonio Perez", password_digest: "password", cohort: "Woodchucks")

# 25.times{Feedback.create(title: ["Antonio","cleaning","EE", "Party options", "Daily naps"].sample, content: Faker::Lorem.paragraph, teacher_id: rand(26..50))}

Category.create(name: "dishes")
Category.create(name: "cleaning")
Category.create(name: "teacher_instruction")


150.times{Comment.create(content: Faker::Lorem.word, user_id: rand(1..50), feedback_id: rand(1..100))}



# 20.times{Category.create(name: Faker::Hacker.now)}




