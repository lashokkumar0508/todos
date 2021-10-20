class User < ActiveRecord::Base
  has_many :todos
  def display_user
    "#{name} #{email}  #{password}"
  end

end
