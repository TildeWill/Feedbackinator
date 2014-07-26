get '/category/new' do
	erb :create_category
end

post '/category/new' do
  each_category = params[:category].split(",").each do |category|
  	Category.create(name: category)
  end
  redirect '/'
end