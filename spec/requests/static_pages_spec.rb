require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home Page" do
    before { visit root_path }
    
    it { should have_selector('h1', text: "Home") }

    it { should have_link('Home', href: root_path) }
    it { should have_link('Todos', href: todos_path) }
  end
end
