class Feedback < ActiveRecord::Base
    belongs_to :student, class_name: "User"
 	belongs_to :teacher, class_name: "User"
 	has_many :subfeedbacks, class_name: "Feedback", foreign_key: :subfeedback_id
 	belongs_to :category
end
