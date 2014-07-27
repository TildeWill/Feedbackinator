get '/' do

  # Look in app/views/index.erb
  @categories = Category.all
  @feedbacks = Feedback.all
  erb :index
end
