get '/feedback' do
  @categories = Category.all

  erb :"feedback/feedback_form"	
end

get '/yourfeedback' do
  @categories = Category.all

  erb :"your_feedback"	
end

post '/feedback' do
  @category = Category.find_by_name(params[:your_category])
  current_user.feedbacks.create(title: params[:title], content: params[:feedback], category: @category.id, private_public: params[:private])
  redirect '/'
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




