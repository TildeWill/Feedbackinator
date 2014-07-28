50.times{User.create(username: Faker::Internet.user_name, password_digest: "password", cohort:["Caterpillars","Newts","Woodchucks"].sample)}

100.times{Feedback.create(title: ["dishes","cleaning","EE", "Instructors", "Curriculum"].sample, content: Faker::Lorem.word, user_id: rand(1..50), category_id: rand(1..3), private_public: [true, false].sample)}

#seeded small sample of teachers for feedback 
User.create(username: "Sam Blackman", password_digest: "password", cohort: "Staff")
User.create(username: "Alex Flores", password_digest: "password", cohort: "Staff")
User.create(username: "Nikola Savic", password_digest: "password", cohort: "Staff")
User.create(username: "Rebecca Miller-Webster", password_digest: "password", cohort: "Staff")
User.create(username: "Tanner Welsh", password_digest: "password", cohort: "Staff")
User.create(username: "Matt Bundy", password_digest: "password", cohort: "Staff")


# 25.times{Feedback.create(title: ["Antonio","cleaning","EE", "Party options", "Daily naps"].sample, content: Faker::Lorem.paragraph, teacher_id: rand(26..50))}

Category.create(name: "dishes")
Category.create(name: "cleaning")
Category.create(name: "teacher_instruction")


150.times{Comment.create(content: Faker::Lorem.word, user_id: rand(1..50), feedback_id: rand(1..100))}



# 20.times{Category.create(name: Faker::Hacker.now)}




