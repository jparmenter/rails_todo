require 'spec_helper'

describe TodoList do

  before { @todo_list = TodoList.create(title: "Lorem ipsum") }

  subject { @todo_list }

  it { should respond_to(:title) }

  it { should be_valid }

  describe "it should not be empty" do
    before { @todo_list.title = "" }
    it { should_not be_valid }
  end
end
