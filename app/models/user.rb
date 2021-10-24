class User < ActiveRecord::Base
  has_secure_password
  has_many :todos
  def display_user
    "#{first_name} #{last_name} #{email}  #{password_digest}"
  end

end
