get '/login' do

  erb :login_signup
end

post '/signup' do
 @user = User.create(username: params[:username], cohort: params[:cohort], password: params[:password])
   if @user.save
     session[:user_id] = @user.id
     redirect '/'
   else
	   redirect '/login'
   end
end

post '/login' do
  user = User.find_by(username: params[:username])

  if user && user.authenticate(params[:password])
 	session[:user_id] = user.id
 	redirect '/'
  else
 	redirect '/login'
  end

end

get '/signout' do 
  session.clear
  redirect '/'
end