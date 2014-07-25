class Category < ActiveRecord::Base
  has_many :feedbacks
  has_many :subfeedbacks, through: :feedbacks
end
