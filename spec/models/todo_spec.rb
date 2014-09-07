require 'spec_helper'

describe Todo do

  before { @todo_list = Todo.create(title: "Lorem ipsum") }

  subject { @todo_list }

  it { should respond_to(:title) }
  it { should respond_to(:items) }

  it { should be_valid }

  describe "with blank title" do
    before { @todo_list.title = " " }
    it { should_not be_valid }
  end

  describe "title should not be longer than 50 chars" do
    before { @todo_list.title = "a" * 51 }
    it { should_not be_valid }
  end
end
