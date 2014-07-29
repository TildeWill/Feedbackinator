get '/' do

  # Look in app/views/index.erb
  @categories = Category.all
  
  if params[:category]
  	@category=Category.find_by_name(params[:category])
  	@title=@category.name
  	@feedbacks=@category.feedbacks
  elsif params[:cohort]
  	cohort=params[:cohort]
  	@title=cohort
  	@users_in_cohort=User.find_by_sql("SELECT * FROM users
 		 WHERE cohort='#{cohort}'")
  	@feedbacks=[]
  	# @users_in_cohort.each do |user| 
  	# 	user.feedbacks.each do |feedback|
  	# 		puts feedback.title
  	# 	end
  	# end

	@users_in_cohort.each do |user| 
  		user.feedbacks.each do |feedback|
  			@feedbacks << feedback
  		end
  	end

  	# @users_in_cohort.first.feedbacks.each {|feedback| puts feedback.title}

  else
  	@feedbacks = Feedback.all
  end

  #@incohort=User.find_by_cohort(@cohort.to_s)
  

  erb :index
end
