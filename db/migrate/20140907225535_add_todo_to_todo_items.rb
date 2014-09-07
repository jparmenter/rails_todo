class AddTodoToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :todo_id, :integer
    add_index :todo_items, [:todo_id, :created_at]
  end
end
