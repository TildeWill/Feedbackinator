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
    @category=Category.find_by_name(params[:name])
    session[:cohort_name]=nil
    session[:category_id]=@category.id
    redirect to ('/')
end


post '/displaycohort' do
    session[:category_id]=nil
    @cohort=params[:cohortname]
    redirect "/?cohort=#{@cohort}"
end


# post '/displayfeedback' do
# 	# value=params[:value].to_s
# 	# @category=Category.where(name: value)
# 	# @category.id.to_i.to_json 
# 	@users=User.find_all_by_cohort(params[:value])
# 	@feedback=@users.feedbacks
# 	#puts @category.id
# 	return @feedback.to_json
# end

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
    user_id = current_user.id
    @feedback = Feedback.find(params[:id])
  # puts params.inspect
    @comment = Comment.create(content: params[:content], user_id: user_id)
    @feedback.comments << @comment
    redirect ("/feedbacks/#{@feedback.id}")
    return @comment.content.to_json
end



