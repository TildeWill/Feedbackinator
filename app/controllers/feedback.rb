get '/feedback' do
  @categories = Category.all

  erb :"feedback/feedback_form"	
end

get '/users/:id/feedbacks' do
  @categories = Category.all


  erb :"your_feedback"	
end

post '/feedback' do
  @category = Category.find_by_name(params[:your_category])
  @user=current_user
  current_user.feedbacks.create(title: params[:title], content: params[:feedback], category_id: @category.id, private_public: params[:private])
  redirect "/users/#{current_user.id}/feedbacks"
end



post '/displayfeedback' do
    redirect "/?category=#{params[:name]}"

end


post '/displaycohort' do
    @cohort=params[:cohortname]
    redirect "/?cohort=#{@cohort}"
end



get '/delete/feedback/:id' do
  @feedback = Feedback.find(params[:id])
  @feedback.destroy
  redirect "/users/#{current_user.id}/feedbacks"
end


get '/feedbacks/:id' do
  @feedback = Feedback.find(params[:id])

  erb :"feedback/specific_feedback"
end



post '/feedbacks/:id/comments' do
    feedback_id = params[:id] 
    user_id = session[:user_id]
    puts params.inspect
    @feedback = Feedback.find(feedback_id)
  # puts params.inspect
    @comment = Comment.create(content: params[:formcontent], user_id: user_id)
    @feedback.comments << @comment
    return @comment.content.to_json
    #redirect "/feedbacks/#{feedback_id}"
end



