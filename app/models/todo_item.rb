class TodoItem < ActiveRecord::Base
  belongs_to :todo
  validates :content, presence: true, length: { maximum: 50 }
end
