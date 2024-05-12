class UsersController < ActionController::Base

  before_action :authenticate_user!, except: [:mainpage]
  
  def mainpage
    render({ :template => "/users/mainpage"})
  end

end
