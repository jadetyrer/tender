# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


#### R7 Problem trying to solve 
#### R8 Why the problem needs solving
Tender is a marketplace for organisers of events to find event staff and for people to find work at events they would like to attend. When planning an event organisers do not employ people all year round and may find it difficult to find staff for the short period of the event. Tender is a web application that can help solve this issue. Event organisers can log on and create events and add job positions for these events. Employees can then log on and apply for the jobs at the events they wish to attend. Tender creates a platform for ease and efficiency of finding employees for events. 

Tender will also have a rating system for both the employee and the employer this will help to avoid the issues of workers or employers not delivering what was promised. Many event staff do not turn up for all shifts and the rating system will act as a deterrent for this and provide information to the organisers which staff will do the best job. The profile and the CV of the worker are available for the employer when the worker applies for the position and the employer can accept of reject the application based on these and the star rating from pervious events worked. 

It is difficult for event organisers to get the same events staff for every event and every year. This is the reason event organisers need Tender to help them find reliable staff easily. Tender will create a hassle-free process for both parties to apply for and advertise event work. It solves the problem of 

Tender also cuts out the need for a third party to find staff reducing the costs of the event organisers and creates the opportunity for employees to find causal work at events they wish to attend. Currently there are no platforms that brings these parties together. 


#### R9 Link to deployed app
https://radiant-wildwood-32516.herokuapp.com/

#### R10 Link to Github Repository 

https://github.com/jadetyrer/tender


#### R11 Description of Tender 

###### Purpose 
The purpose of Tender is to bring event organisers in need of workers at the event and people that would like to work at the event. It provides a platform for both parties to easily connect and find the appropriate worker or job. The event organisers can log on and create events and add the job positions available for the event. The potential workers can then search through these events and view the available roles. They can click apply for any of the roles and the application will be sent to the relevant employer for processing. The emplyer can then log on and view the applicatnts on thier dashboard which contains links to thier porfile and the baility to downlload thier qualifications and CV. From this information the emplyer can make a decsion on whether to accept or reject the application. The worker will then be notified on their dashboard on the status of thier application. 

###### Functionality and Features
The features of the platform form include: 
* Separate sign-ups for employees and employers - Devise was used to allow both the worker and the organisers to sign-up and have their own unique logins. 
* The ability for employers to create, edit and delete events
* Employers can create multiple available positions for each event and edit them
* Separate dashboards for each party - the platform shows information relevant to the logged in user. 
* Worker profiles - the worker can create their profile for the employers to view when assessing application. 
* Workers can upload profile pictures, their CV and relevant qualifications - these are hosted on AWS S3.
* The ability for workers to browse and search for jobs and apply for any of the roles by event.
* Employers can accept and reject these applications based on the employees profile or other uploaded documents. 
* Workers are notified of the status of their application. 
* There should be the ability to rate the users after the event had taken place but limited time meant this feature will have to be added at a later date. 

###### Sitemap

![sitemap](sitemap.png)

###### Screenshots 
Add after changing database

###### Target Audience
The target audience is organisers of any events such as sporting events, music festivals and food festivals. These event organisers will need temporary staff such as security staff, wait staff and bartenders. The target audience of workers are individuals that need casual work for extra money or those looking to attend events but would like to work. These individuals could be people working part-time, students or full-time workers looking to attend particular events without paying for the tickets reducing thier costs of attending. 

###### Tech Stack 
* Ruby on Rails 
* AWS S3 
* PostgresQL
* Heroku
* HTML
* SCSS 

#### R12 User Stories
I have created the user stories for:
* The employer - the event organiser
* the employee - the individual searching for a job

I used the card board to demonstrate the user stories and the future features that could be added to improve the functionality of the web application. The user stories show the minimum abilities of the application to achieve the needs of the users. The MVP was achieved in the first iteration. 

As an employer, I want to: 
* Sign-up to create an account
* Add events so workers can see them 
* Add positions to the events for workers to apply so I can advertise the jobs
* See the applicants that have applied for my positions so I can pick a suitable applicant
* Accept and reject the applications so I can hire the workers I have chosen


As an employee, I want to: 
* Sign-up and create a profile so employers can visit my profile
* Browse and search for events so I can find the events I would like to work at
* Apply for the positions at certain events so I can get a job that is suitable
* See the status of my applications so I know if I have been selected

![user-stories](user-stories.png)

#### R13 Wireframes 

Below are my wireframes that I created using Figma:

![homepage](homepage.png)

![events-index](events-index.png)

![event-show](event-show.png)

![create-event](create-event.png)

![create-position](create-position.png)

![user-dashboard](user-dashboard.png)

![worker-dashboard](worker-dashboard.png)

![edit-profile](edit-profile.png)

#### R14 ERD for Tender

Below is my enitiy relationship diagram (ERD) that was created using Lucid Chart:

![ERD](ERD.png)

#### R15 High Level Abstractions 

#### R16 Third party APIs

#### R17 Project Models 

#### R18 Database Relations 

#### R19 Database Schema 

#### R20 Project Tracking





Can be expanded to vendors. 
