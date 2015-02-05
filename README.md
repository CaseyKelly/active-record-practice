The goal of this exercise is to experiment with a
belongs_to and has_many both in Rails Console and in Views.

* bundle
* rake db:create db:migrate db:seed

There are Employees and Companies, the models need to be fixed to make them communicate.

Companies have employees. Employees work for companies.

Stories:

Rails Console

* select all the Employees.
* select all the Companies.
* select a single company.
* select all employees of that company.
* select an employee
* select what company he/she works for.
* select all companies in the "Tech" industry
* select all companies in the "Education" industry
* select all employees named "Chad". Destroy them.
* select all companies with ID's between 1 and 10.
* select all employees that have a title CEO.
* select all employees that have a title JuniorDev.
* create a company called whatever you want.
* create yourself as an employee of that company with a title of CEO.
* select Bobby from the employees and return his title.
* select all the companies in the "Finance" industry and destroy them.



Views

* There are no views setup. Root is set to standard rails page.
* There are no routes setup. Remember that we need to nest routes.
* Create an index page for companies that lists all companies and attributes in a   table, with a link to that companies show page from it's name.(Set root to this page)
* Show page for a company that show's all details of company and lists all it's                employees.
* The only views you need are an index and show for companies.
