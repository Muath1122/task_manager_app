Feature: Task Management
  In order to manage my tasks
  As a user
  I want to perform all CRUD operations through the browser


  Scenario: User views the tasks list
    Given I am on the tasks page
    Then I should see the tasks table

  Scenario: User adds a new task
    Given I am on the tasks page
    When I add a new task titled "New Task"
    Then I should see "New Task" in the task list

  Scenario: User edits a task
    Given I have a task titled "Old Task"
    When I edit the task to have title "Updated Task"
    Then I should see "Updated Task" in the task list

  Scenario: User deletes a task
    Given I have a task titled "Delete Me"
    When I delete the task titled "Delete Me"
    Then I should not see "Delete Me" in the task list

  Scenario: User marks a task as completed
    Given I have an incomplete task titled "Finish Homework"
    When I mark the task "Finish Homework" as completed
    Then I should see "✓ Completed"
