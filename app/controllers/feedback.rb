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

