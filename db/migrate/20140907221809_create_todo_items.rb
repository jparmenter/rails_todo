class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :content
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
