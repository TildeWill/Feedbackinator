get '/questionnaire/new' do

  erb :questionnaire
end


post '/questionnaire/new' do
  Questionnaire.create(challenge_level: params[:challenge], help_level: params[:help], user_id: current_user.id)

  redirect '/questionnaire/visualization'
end

get '/questionnaire/visualization' do
  @questions = Questionnaire.all
  @array_1 = []
  @array_2 = []
  @array_3 = []
  @array_4 = []
  @array_5 = []
  @questions.each do |question|
    if question.help_level == 1
      @array_1 << question
    end
    if question.help_level == 2
      @array_2 << question
    end
    if question.help_level == 3
      @array_3 << question
    end
    if question.help_level == 4
      @array_4 << question
    end
    if question.help_level == 5
      @array_5 << question
    end
  end

  @array_6 = []
  @array_7 = []
  @array_8 = []
  @array_9 = []
  @array_10 = []
  @questions.each do |question|
    if question.challenge_level == 1
      @array_6 << question
    end
    if question.challenge_level == 2
      @array_7 << question
    end
    if question.challenge_level == 3
      @array_8 << question
    end
    if question.challenge_level == 4
      @array_9 << question
    end
    if question.challenge_level == 5
      @array_10 << question
    end
  end


  erb :chart
end
