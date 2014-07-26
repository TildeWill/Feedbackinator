get '/' do
  @feedbacks = Feedback.all
  

  erb :index
end
