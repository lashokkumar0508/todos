class TodosController < ApplicationController
  def index
    render plain: Todo.order(:due_date).map {|todo| todo.to_diaplay_todo}.join("\n")
  end
  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.to_diaplay_todo
  end

end
