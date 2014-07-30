
# 100.times{Feedback.create(title: ["dishes","cleaning","EE", "Instructors", "Curriculum"].sample, content: Faker::Lorem.word, user_id: rand(1..50), category_id: rand(1..3), private_public: [true, false].sample)}

#seeded small sample of teachers for feedback
User.create(username: "Sam Blackman", password: "password", cohort: "Staff")
User.create(username: "Alex Flores", password: "password", cohort: "Staff")
User.create(username: "Nikola Savic", password: "password", cohort: "Staff")
User.create(username: "Rebecca Miller-Webster", password: "password", cohort: "Staff")
User.create(username: "Tanner Welsh", password: "password", cohort: "Staff")
User.create(username: "Matt Bundy", password: "password", cohort: "Staff")

# Seed cohort members to submit feedback
User.create(username: "Adam Hardy", password: "password", cohort: "Newts")
User.create(username: "Alan Florendo", password: "password", cohort: "Newts")
User.create(username: "Anthony Edwards Jr", password: "password", cohort: "Newts")
User.create(username: "Avi Fox-Rosen", password: "password", cohort: "Newts")
User.create(username: "Cassie Moy", password: "password", cohort: "Newts")
User.create(username: "David Sin", password: "password", cohort: "Newts")
User.create(username: "Derek Siker", password: "password", cohort: "Newts")
User.create(username: "Dylan Krause", password: "password", cohort: "Newts")
User.create(username: "Dylan Richards", password: "password", cohort: "Newts")
User.create(username: "Elz Yawili", password: "password", cohort: "Newts")
User.create(username: "Eric Hou", password: "password", cohort: "Newts")
User.create(username: "Fahia Mohamed", password: "password", cohort: "Newts")
User.create(username: "Farheen Malik", password: "password", cohort: "Newts")
User.create(username: "Hilary Barr", password: "password", cohort: "Newts")
User.create(username: "John Berry", password: "password", cohort: "Newts")
User.create(username: "Julius Jung", password: "password", cohort: "Newts")
User.create(username: "Justin Lee", password: "password", cohort: "Newts")
User.create(username: "Michael Weiss", password: "password", cohort: "Newts")
User.create(username: "Molly Huerster", password: "password", cohort: "Newts")
User.create(username: "Rootul Patel", password: "password", cohort: "Newts")
User.create(username: "Stephen Estrada", password: "password", cohort: "Newts")
User.create(username: "Alan Cohen", password: "password", cohort: "Caterpillars")
User.create(username: "Alexander Le", password: "password", cohort: "Caterpillars")
User.create(username: "Alexei Pesic", password: "password", cohort: "Caterpillars")
User.create(username: "Audrey McGowan", password: "password", cohort: "Caterpillars")
User.create(username: "Bruno Pasini", password: "password", cohort: "Caterpillars")
User.create(username: "Chase Blokker", password: "password", cohort: "Caterpillars")
User.create(username: "Daniel Deepak", password: "password", cohort: "Caterpillars")
User.create(username: "David Bragdon", password: "password", cohort: "Caterpillars")
User.create(username: "Derek Johnson", password: "password", cohort: "Caterpillars")
User.create(username: "Edward Kim", password: "password", cohort: "Caterpillars")
User.create(username: "Eric Shemtov", password: "password", cohort: "Caterpillars")
User.create(username: "Garrett Dalton", password: "password", cohort: "Caterpillars")
User.create(username: "George Zeng", password: "password", cohort: "Caterpillars")
User.create(username: "Joseph White", password: "password", cohort: "Caterpillars")
User.create(username: "Justin Wagner", password: "password", cohort: "Caterpillars")
User.create(username: "Kimberly Brewer", password: "password", cohort: "Caterpillars")
User.create(username: "Max Lock", password: "password", cohort: "Caterpillars")
User.create(username: "Nick Giovacchini", password: "password", cohort: "Caterpillars")
User.create(username: "Patti O'Neill", password: "password", cohort: "Caterpillars")
User.create(username: "Ryan Storberg", password: "password", cohort: "Caterpillars")
User.create(username: "Adrian Soghoian", password: "password", cohort: "Woodchucks")
User.create(username: "Alexis Ernst", password: "password", cohort: "Woodchucks")
User.create(username: "Armen Vartan", password: "password", cohort: "Woodchucks")
User.create(username: "Ben Brostoff", password: "password", cohort: "Woodchucks")
User.create(username: "Brenden Susens-Jackson", password: "password", cohort: "Woodchucks")
User.create(username: "Chantelle Turnbull", password: "password", cohort: "Woodchucks")
User.create(username: "Christian Moon", password: "password", cohort: "Woodchucks")
User.create(username: "Gregory Knudsen", password: "password", cohort: "Woodchucks")
User.create(username: "Gregory Piccolo", password: "password", cohort: "Woodchucks")
User.create(username: "Ian Shuff", password: "password", cohort: "Woodchucks")
User.create(username: "Jake Wayne", password: "password", cohort: "Woodchucks")
User.create(username: "John Quigley", password: "password", cohort: "Woodchucks")
User.create(username: "Joseph Cohen", password: "password", cohort: "Woodchucks")
User.create(username: "Kai Prout", password: "password", cohort: "Woodchucks")
User.create(username: "Katie Reiner", password: "password", cohort: "Woodchucks")
User.create(username: "Kennedy Bhagwandeen", password: "password", cohort: "Woodchucks")
User.create(username: "Kenneth Mendonca", password: "password", cohort: "Woodchucks")
User.create(username: "Matthieu Gavaudan", password: "password", cohort: "Woodchucks")
User.create(username: "Michael Drew Teter", password: "password", cohort: "Woodchucks")
User.create(username: "Natalie Baer", password: "password", cohort: "Woodchucks")
User.create(username: "Richard Macias", password: "password", cohort: "Woodchucks")
User.create(username: "Siddharth Patel", password: "password", cohort: "Woodchucks")
User.create(username: "Stella Kim", password: "password", cohort: "Woodchucks")
User.create(username: "Victor Schaeperkoetter", password: "password", cohort: "Woodchucks")
User.create(username: "Vivek George", password: "password", cohort: "Woodchucks")
User.create(username: "Yariv Kirschner", password: "password", cohort: "Woodchucks")
User.create(username: "Antonio Perez", password: "password", cohort: "Woodchucks")

# 25.times{Feedback.create(title: ["Antonio","cleaning","EE", "Party options", "Daily naps"].sample, content: Faker::Lorem.paragraph, teacher_id: rand(26..50))}

# Category.create(name: "dishes")
# Category.create(name: "cleaning")
# Category.create(name: "teacher_instruction")


# 150.times{Comment.create(content: Faker::Lorem.word, user_id: rand(1..50), feedback_id: rand(1..100))}



# 20.times{Category.create(name: Faker::Hacker.now)}




