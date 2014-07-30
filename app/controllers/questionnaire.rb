get '/questionnaire/new' do

  erb :questionnaire
end


post '/questionnaire/new' do
  Questionnaire.create(challenge_level: params[:challenge], help_level: params[:help], user_id: current_user.id)

  redirect '/questionnaire/visualization'
end

get '/questionnaire/visualization' do
  @questions = Questionnaire.all
  @array_1 = @questions.where(help_level: 1)
  @array_2 = @questions.where(help_level: 2)
  @array_3 = @questions.where(help_level: 3)
  @array_4 = @questions.where(help_level: 4)
  @array_5 = @questions.where(help_level: 5)


  @array_6 = @questions.where(challenge_level: 1)
  @array_7 = @questions.where(challenge_level: 2)
  @array_8 = @questions.where(challenge_level: 3)
  @array_9 = @questions.where(challenge_level: 4)
  @array_10 = @questions.where(challenge_level: 5)



  erb :chart
end
