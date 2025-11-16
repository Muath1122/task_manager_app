Given("I am on the tasks page") do
  visit tasks_path
end

Then("I should see the tasks table") do
  expect(page).to have_selector("table")
end

# -----------------------------
# CREATE
# -----------------------------
When("I add a new task titled {string}") do |title|
  click_link "Add New Task"
  fill_in "Title", with: title
  fill_in "Description", with: "Test description"
  fill_in "Due date", with: Date.today + 1
  click_button "Create Task"
end

Then("I should see {string} in the task list") do |text|
  expect(page).to have_content(text)
end

# -----------------------------
# SETUP
# -----------------------------
Given("I have a task titled {string}") do |title|
  Task.create!(title: title, description: "desc", due_date: Date.today)
end

Given("I have an incomplete task titled {string}") do |title|
  Task.create!(title: title, description: "desc", due_date: Date.today, completed: false)
end

# -----------------------------
# UPDATE
# -----------------------------
When("I edit the task to have title {string}") do |new_title|
  task = Task.first
  visit edit_task_path(task)
  fill_in "Title", with: new_title
  click_button "Update Task"
end

# -----------------------------
# DELETE
# -----------------------------
When("I delete the task titled {string}") do |title|
  task = Task.find_by(title: title)
  visit tasks_path
  click_link "Delete", href: task_path(task)
end

Then("I should not see {string} in the task list") do |text|
  expect(page).not_to have_content(text)
end

# -----------------------------
# COMPLETE
# -----------------------------
When("I mark the task {string} as completed") do |title|
  task = Task.find_by(title: title)
  task.update!(completed: true)
end

Then("I should see {string}") do |text|
  visit tasks_path
  expect(page).to have_content(text)
end
