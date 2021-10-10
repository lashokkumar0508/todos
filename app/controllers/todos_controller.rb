class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    #render plain: Todo.order(:due_date).map {|todo| todo.to_diaplay_todo}.join("\n")
    render "index"
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.to_diaplay_todo
  end
  def create

    due_date = DateTime.parse(params[:due_date])
    todo_text = params[:todo_text]
    new_todo = Todo.create!(todo_text:todo_text, due_date:due_date, completed:false)
    respose_text = "Hey you create todo wit ID = #{new_todo.id}"
    render plain: respose_text
  end
  def update
    id = params[:id]
    completed = params[:completed]
    todo = Todo.find(id)
    todo.completed = completed
    todo.save!
    render plain: "The updated to status #{completed}"
  end
end
