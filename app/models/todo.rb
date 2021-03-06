class Todo < ActiveRecord::Base
  belongs_to :user
  def to_diaplay_todo
    is_completed = completed ? "[X]" : "[ ]"
    "#{id} #{is_completed}  #{todo_text}  #{due_date.to_s(:long)} "
  end
  def self.of_user(user)
    all.where(user_id: user.id)
  end
  def self.overdue
    where("due_date < ? and completed = ?", Date.today, false)
  end
  def self.duetoday
    where("due_date = ?", Date.today)
  end
  def self.duelater
    where("due_date > ?", Date.today)
  end
  def self.completed
    all.where(completed: true)
  end


end
