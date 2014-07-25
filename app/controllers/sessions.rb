enable :sessions

post '/login' do
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/"
  else
    redirect "/signup_login"
  end
end

get '/signup_login' do
  erb :"users/signup_login"
end

post '/signup' do
@user = User.create(email: params[:email], password: params[:password])

  redirect '/'
end


get '/logout' do
  session.clear
  redirect '/'
end
