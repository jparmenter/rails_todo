class Todo < ActiveRecord::Base
  has_many :items, foreign_key: "todo_id", class_name: "TodoItem"
  validates :title, presence: true, length: { maximum: 50 }
end
