get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :index
end
