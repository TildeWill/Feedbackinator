class Feedback < ActiveRecord::Base
  belongs_to :student, class_name: "User"
 	belongs_to :teacher, class_name: "User"
 	has_many :subfeedbacks, foreign_key: "subfeedback_id", class_name: "Feedback"
 	belongs_to :category
end
