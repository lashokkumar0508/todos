class TodosController < ActionController::Base
  def index
    render plain: "Hello, this is /todos!"
  end
end
