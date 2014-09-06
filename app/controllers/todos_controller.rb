class TodosController < ApplicationController
  def index
    @todoLists = TodoList.all
  end
end
