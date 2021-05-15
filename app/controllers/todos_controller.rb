class TodosController < ApplicationController
  def index
  end
  def all_todos
    completed = Todo.where(completed: true)
    pending = Todo.where(completed: false)
    render json: { completed: completed, pending: pending }
  end
end
