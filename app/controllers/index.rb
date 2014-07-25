# displays all users and feedback on index
get '/' do
  @feedback = Feedback.all
  erb :index
end
#Display
get '/user/:id' do

  erb :"users/display_user_profile"
end
# route
post '/user/:id' do
  @user = User.where(user_id: params[:user_id]).first

end
