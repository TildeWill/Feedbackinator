get '/feedback' do
  @categories = Category.all


  erb :"feedback/feedback_form"	
end

post '/feedback' do
  @category = Category.find_by(name: params[:your_category])
  current_user.feedbacks.create(title: params[:title], content: params[:feedback], category_id: @category.id, private_public: params[:private])

  redirect '/'
end


get '/feedback/:id' do
  @feedback = Feedback.find(params[:id])

  erb :"feedback/specific_feedback"
end

post '/feedback/:id/vote' do
  @feedback = Feedback.find(params[:id])
  @feedback.vote_count += 1
  feedback_vote = @feedback.vote_count
  content_type :json

  {vote: feedback_vote}.to_json
end