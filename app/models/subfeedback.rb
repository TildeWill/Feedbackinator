class Subfeedback < ActiveRecord::Base
  belongs_to :feedback
  belongs_to :category
end
