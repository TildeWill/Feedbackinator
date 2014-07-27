helpers do 
	
  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_category
    @category ||= Category.find(session[:category_id]) if session[:category_id]
  end

  


end