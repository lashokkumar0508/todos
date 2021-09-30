class Users < ActiveRecord::Base
  def display_user
    "#{name} #{email}  #{password}"
  end

end
