class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    #render plain: "Welcom to user all"
    render plain:User.all.map {|user| user.display_user }.join("\n")
  end
  def create
    name = params[:name]
    email = params[:email]
    password = params[:password]
    new_user = User.create!(name: name, email: email,password: password)
    respose_text = "Hey you create todo wit ID = #{new_user.id}"
    render plain: respose_text
  end
  def login
    email = params[:email]
    password = params[:password]
    user = User.where(["email = ? and password = ?", email, password]).exists?
    render plain: user
  end

end
