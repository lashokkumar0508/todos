class User < ActiveRecord::Base
  has_many :todos
  def display_user
    "#{first_name} #{email}  #{password_digest}"
  end

end
