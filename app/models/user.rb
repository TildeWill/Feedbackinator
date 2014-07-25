class User < ActiveRecord::Base
  has_secure_password
  has_many :student_feedbacks, foreign_key: "student_id", class_name: "Feedback"
  has_many :teacher_feedbacks, foreign_key: "teacher_id", class_name: "Feedback"
  has_many :subfeedbacks

#class method called .teachers and .students

end
