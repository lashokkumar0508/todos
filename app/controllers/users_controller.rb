class UsersController < ApplicationController

  skip_before_action :ensure_user_logged_in
  def index
    #render plain: "Welcom to user all"
    render plain:User.all.map {|user| user.display_user }.join("\n")
  end
  def create
    name = params[:first_name]
    email = params[:email]
    params[:password]
    new_user = User.create!(first_name: name, last_name: params[:last_name],email: email,password: params[:password])
    session[:current_user_id] = new_user.id
    redirect_to "/"
  end
  def login
    email = params[:email]
    password = params[:password]
    user = User.where(["email = ? and password = ?", email, password]).exists?
    render plain: user
  end
  def show
    render plain:User.all.map {|user| user.display_user }.join("\n")
  end

end
