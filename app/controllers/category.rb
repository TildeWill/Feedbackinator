get '/category/new' do
	erb :create_category
end

post '/category/new' do
  	Category.create(name: params[:category_name])

  redirect '/'
end

