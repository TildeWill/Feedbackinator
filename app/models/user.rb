class User < ActiveRecord::Base
  has_many :student_feedback, foreign_key => student_id, :class_name=> "Feedback"
  has_many :teacher_feedback, foreign_key => teacher_id, :class_name => "Feedback"
end
