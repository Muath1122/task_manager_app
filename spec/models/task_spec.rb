require 'rails_helper'

RSpec.describe Task, type: :model do
  
  it "is valid with valid attributes" do
    task = Task.new(title: "Test Task", description: "Sample", due_date: Date.today, completed: false)
    expect(task).to be_valid
  end

  it "is not valid without a title" do
    task = Task.new(description: "No title", due_date: Date.today)
    expect(task).to_not be_valid
  end

end
