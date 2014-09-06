require 'spec_helper'

describe TodoList do

  before { @todo_list = TodoList.create(title: "Lorem ipsum") }

  subject { @todo_list }

  it { should respond_to(:title) }

  it { should be_valid }
end
