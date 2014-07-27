class Category < ActiveRecord::Base
  has_many :feedbacks
  has_many :comments, through: :feedbacks
end
