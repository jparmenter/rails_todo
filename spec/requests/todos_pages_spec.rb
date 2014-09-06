require 'spec_helper'

describe "Todos Page" do

  subject { page }

  describe "Index" do
    let!(:todo) { TodoList.create(title: "Lorem ipsum") }
    before { visit todos_path }
    it { should have_content("Todos") }

    describe "todo lists" do
      it { should have_content(todo.title) }
    end
  end

end
