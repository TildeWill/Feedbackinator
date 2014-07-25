class Feedback < ActiveRecord::Base
    belongs_to :user
 	has_many :subfeedbacks, class_name: "Feedback", foreign_key: :subfeedback_id
 	belongs_to :category

 	def student_feedbacks

 	end
end
