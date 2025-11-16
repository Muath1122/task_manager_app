Feature: Add a new task
  In order to manage my tasks
  As a user
  I want to add a new task and see it in the list

  Scenario: User adds a new task successfully
    Given I am on the tasks page
    When I add a new task titled "Test Task"
    Then I should see "Test Task" in the task list
