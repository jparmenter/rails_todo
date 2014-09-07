require 'spec_helper'

describe TodoItem do
  let(:todo) { Todo.create(title: "Title 1") }
  before { @todoItem = todo.items.build(content: "Lorem ipusm") }

  subject { @todoItem }

  it { should respond_to(:content) }
  it { should respond_to(:complete) }

  it { should be_valid }

  it "should have complete default to false" do
    expect(@todoItem.complete).to eq false
  end

  describe "with blank content" do
    before { @todoItem.content = " " }
    it { should_not be_valid }
  end

  describe "with content that is too long" do
    before { @todoItem.content = "a" * 51 }
    it { should_not be_valid }
  end
end
