class Todo < ActiveRecord::Base
  def to_diaplay_todo
    is_completed = completed ? "[X]" : "[ ]"
    "#{id} #{is_completed}  #{todo_text}  #{due_date.to_s(:long)} "
  end
  def self.overdue
    where("due_date < ?", Date.today)
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
