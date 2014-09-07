class TodosController < ApplicationController
  def index
    @todos = TodoList.all
  end
end
