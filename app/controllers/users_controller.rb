class UsersController < ApplicationController

  skip_before_action(:authenticate_user!, { :only => [:index] })

  def index
    @users = User.all.order({ :username => :asc })
    render({ :template => "users/index" })
  end

  def show
    @user = params.fetch("username")
    render({ :template => "users/show" })
  end
 
  def liked_photos
    the_username = params.fetch("path_username")
    @user = User.where({ :username => the_username }).at(0)
 
    if (@user != current_user) && (@user.private && @user.followers.exclude?(current_user))
      redirect_to("/", { :notice => "You're not authorized for that." })
    else
      render({ :template => "users/liked_photos" })
    end
  end

end
