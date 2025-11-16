Given("I am on the tasks page") do
  visit tasks_path
end

When("I add a new task titled {string}") do |title|
  click_link "Add New Task"
  fill_in "Title", with: title
  fill_in "Description", with: "Sample description"
  fill_in "Due date", with: Date.today
  click_button "Create Task"
end

Then("I should see {string} in the task list") do |title|
  expect(page).to have_content(title)
end
