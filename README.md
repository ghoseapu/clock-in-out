## Project Description

Allow teachers to clock-in/clock-out of their daycare center. When a teacher arrives to work, they
clock-in, when leave they clock-out, and the platform keeps track of these events.
Using Ruby on Rails (or equivalent MVC framework), build a basic MVP of a clock-in/out application, using traditional CRUD methods.

The app should:
1. Present a clock-in/out screen that will:
	- Allow a user to enter their name or log in
	- Allow the user to clock either in or out
	- Upon clock event, store this information
2. Provide a list of all clock events with logged information

Other things to consider:
1. A teacher may need to clock in/out multiple times a day (e.g., for lunch)
2. A clock event may need to be edited or deleted
3. Are there any validations or UI constraints.

### Deliverable

Code and working prototype:
1. Upload the application code to a repo and provide the link.
2. Make the prototype available for testing by uploading to a free application server (such as Heroku) and provide the link.

In the README of your project, please answer the following questions:
1. How did you approach this challenge?
2. What schema design did you choose and why?
3. If you were given another day to work on this, how would you spend it? What if you were
given a month?


### Documentation:

1. Instructions on how to build/run application
   - ruby 2.7.2 has been used to develop this application. sqlite has been ussed for relational database
   - To run this project one should have Ruby on Rails setup in his/her machine.
   - Use Git Bash or cmd to run this application:
      1. Step 1: Go to project location using Git Bash (Example: cd /f/myrails/clock-in-out )
      2. Step 2: run "bundle install" (Example: bundle install )
      3. Step 3: run "rails db:setup" (Example: rails db:setup )
      4. Step 4: run "RAILS_ENV=test rails db:setup" for test cases (Example: RAILS_ENV=test rails db:setup )
      5. Step 5: run "rails test" for unit test (Example: rails test )
      6. Step 6: run "rails s" to start server (Example: rails s )
      7. Step 7: Visit "http://localhost:3000" in your browser

2. Approach to the solution:
   - Since it is super easier and faster to build a CRUD (create, read, update, delete/destroy) application using Ruby on Rails I decided to go with Ruby on Rails (ruby 2.7.2 and rails 6.0.3.4) framework to accomplish this project. A simple form containing a text box (for teacher's name) and a check box (for clock in or out) has been used for allowing a teacher to create a clock in/out event. However, system generated current time is considered as logged time in this case. Note: checked box is considered as clock-in, whereas, unchecked box is considered as clock-out.
3. Schema design: 
   - A single table has ben used which contains "teacher_name:string" (for storing teacher's name), "teacher_clocked_in:boolean" (for storing clock in or out depending on checked or unchecked condition), and "teacher_logged_time" (for storing system generated current time). Teachers are not allowed to pick the time when creating a clock in-out event. Nevertheless, they can update the information in editing section.
4. What could be taken care of on getting extra time
   - One more day to work on this:
      1. Use rspec for test cases
      2. Use user authentication for editing section. Only authorized users should edit information
      3. Text field validation (no numbers and special characters should be allowed)
   - One month to work on this:
      1. Use CI/CD pipeline for running unit tests while committing
      2. Filter table (data) by teacher's name, date, hours
      3. Import bulk data from csv files by using API
      4. Pagination on the home page
      5. Clock in or out events should be created alternatively by a specific teacher. For example, a teacher who created a clock-in event cannot create another clock-in event immediately after that. Next time, s/he can create clock-out event only.