get '/' do
<<<<<<< HEAD
  # Look in app/views/index.erb
  @categories = Category.all
=======
  @feedbacks = Feedback.all
  

>>>>>>> 86ba632552d8eafd69754a15d75f92d238df5d48
  erb :index
end
