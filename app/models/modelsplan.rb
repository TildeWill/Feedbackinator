# class User
# 	has_many :student_feedback, foreign_key => student_id, :class_name=> "Feedback"
# 	has_many :teacher_feedback, foreign_key => teacher_id, :class_name => "Feedback"
# end

# # MIGRATION:
# # Username
# # Name(OPTIONAL)
# # Password_digest
# # Cohort


# class Feedback
# 	belongs_to :student, :class_name => "User"
# 	belongs_to :teacher, :class_name=> "User"
# 	has_many :subfeedbacks
# 	belongs_to :category
# end

# # MIGRATION:
# # Title
# # Content
# # t.references :student
# # t.references :teacher
# # t.references :category


# class Subfeedback
# 	belongs_to :feedback
# 	belongs_to :category
# end

# #MIGRATION:
# # Title
# # Content
# # t.references :feeback
# # t.references :category

# class Category
# 	has_many :feedbacks
# 	has_many :subfeedbacks, through: :feedbacks

# end

# class Questionnaire
# 	belongs_to :student, class_name: "User"
# end

# # MIGRATION:
# # Challenge_level
# # Help_level
# # t.references :student

