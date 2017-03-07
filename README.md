
# Operations
### Why is this important?

This lab is a great opportunety for you to create a useful rails app and experiemnet with active records and associations. 


### What are the objectives?

 After this workshop, developers will be able to:
 
  - Create rails application 
  - Create models and implement associations using ActiveRecord
  - CRUD data in the database
 


## Goal
You are managing many developers on your team and each one is working with a different client. You, as the team manager, are going to create a tool for yourself to keep track of your developers, the projects and clients( strech goal ). You will be using ruby on rails and postgresql to create this app. 

Follow the instruction and make your team proud! 

![](http://stream1.gifsoup.com/view5/4743746/project-management-goes-wrong-o.gif)

<hr>

#### Step1: Create OperationApp

Create a rails app named OperationApp using postgresql.
<details><summary>Can't remember the command?</summary>
 ` $rails new OperationApp -T -d postgresql `
</details>


#### Step2: Create Developer Model

The Developer model should have the following properties:

```
first_name: string
last_name: string
email: string
github_url: string
years_experience: integer

```
create this model using rails command and dont forget to ` rails db:migrate `.

Now jump to the rails cosole and test your model. Create an few developers to use in the future steps.

#### Step3: Create Developers Controller
Create controller for developers and implement these functionalities:

 - See full list of all developers 
 - See information about one specific developer
 - Add new developer to the team
 - edit/update developer information
 - Remove developer from the team

 
Test your controller and views before moving to the next section.

####Step4: Create Project Model

The Project model should have the following properties:

```
name: string
desc: string
github_url: string
deadline: date

``` 
Don't forgter to run the migration and test the new model in rails console.

####Step5: Associations
![](diagram.png)

Your team is structure allows more than one developer on one project but there should atleast be one person assign to any project saved in your database.

How do you see the association between Developer and Project model?





------------------
 
Creating an app
creating a model
creating migrations
completing views

add another model with assoccietions
do the migrations 
complete the views

developer - projects

have developer model
and project model
client model

project has a developer and a client id