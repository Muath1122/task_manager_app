# Simple Task Manager – Ruby on Rails

A simple task management web application built using Ruby on Rails.  
The app allows users to create, view, edit, update, and delete tasks.  
Includes RSpec (TDD) and Cucumber (BDD) testing with Agile Scrum planning via GitHub Issues.

---

## 🔧 Features

- Add new tasks (title, description, due date)
- View all tasks
- Edit existing tasks
- Delete tasks
- Mark tasks as completed or not completed

---

## 🧪 Testing

### ✔ RSpec (TDD)
Model validation tests:
- Valid task
- Missing title validation

Run:
```bash
bundle exec rspec



✔ Cucumber (BDD) 
Feature test:
Adding a new task and verifying it appears in the list
Run:  bundle exec cucumber


🚀 How to Run the App
bundle install
rails db:migrate
rails server

Open: http://localhost:3000

