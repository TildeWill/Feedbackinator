get '/questionnaire/new' do

  erb :questionnaire
end


post '/questionnaire/new' do
  Questionnaire.create(challenge_level: params[:challenge], help_level: params[:help], user_id: current_user.id)

  redirect '/'
end