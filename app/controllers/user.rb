get '/user_profile/:id' do 
	@user_profile = User.find(params[:id])
	@feedbacks = @user_profile.feedbacks

	erb :user_profile
end