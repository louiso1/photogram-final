class UsersController < ActionController::Base

  skip_before_action(:authenticate_user!, { :only => [:index] })
  
  def mainpage
    render({ template => "/users/mainpage"})
  end

  


end
