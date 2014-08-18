get '/' do

  # Look in app/views/index.erb
  @categories = Category.all
  @feedbacks = Feedback.all
  if params[:cohort]
  	@cohort=params[:cohort].to_s
  	@incohort=User.find_by_sql("SELECT * FROM users
 		 WHERE cohort='#{@cohort}'")
  end

  #@incohort=User.find_by_cohort(@cohort.to_s)
  

  erb :index
end



get '/edit_cohorts' do
	erb :edit_cohorts


end


post '/cohorts/new' do
Cohort.create(name: params[:cohort_name])
  redirect '/'
end