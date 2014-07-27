get '/feedback' do
  @categories = Category.all

  erb :"feedback/feedback_form"	
end

post '/feedback' do
  @category = Category.find_by(name: params[:your_category])
  current_user.feedbacks.create(title: params[:title], content: params[:feedback], category_id: @category.id)

  redirect '/'
end

post '/displayfeedback' do
	# value=params[:value].to_s
	# @category=Category.where(name: value)
	# @category.id.to_i.to_json 
	@category=Category.find_by_name(params[:value])
	#puts @category.id
	return @category.id.to_json
end
