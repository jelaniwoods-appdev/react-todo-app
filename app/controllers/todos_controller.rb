class TodosController < ApplicationController
  def index
  end

  def all_todos
    completed = Todo.where(completed: true)
    pending = Todo.where(completed: false)
    render json: { completed: completed, pending: pending }
  end

  def update
    todo = Todo.find(params[:id])
    if todo.update!(todo_params)
      render json: { message: "Todo Item updated successfully" }
    else
      render json: { message: "An error occured" }
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:id, :title, :completed)
  end
end
