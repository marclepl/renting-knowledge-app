# Table of contents
1. [Introduction](#introduction)
2. [Group members](#group)
3. [Introduction to Ruby on Rails and the MVC framework](#ruby)
4. [Programming languages used](#languages)
5. [Structure of the code](#structure)
6. [How to run the code?](#running)
7. [How to navigate the app?](#navigate)
8. [Some screenshots](#screenshots)
9. [References](#references)


# 1. Introduction <a name="introduction"></a>

Renting Knowledge is a Ruby on Rails mobile app developed in the context of the Programming with Advanced Programming Languages course of Dr. Mario Silic offered at the University of St. Gallen during the Autumn semester 2021.
This app aims at reducing the waste of used books by offering a platform for book lovers to rent and lend used books. In a first step, this platform allows users to list their used books with a certain price, picture and information. In a second step, users can rent books for a certain limited time and price from other users. In a last step, users can log into the platform to get an overview of who is in possession of their books at the moment and which books they have themselves rented.

# 2. Group members involved in the development of this app <a name="group"></a>

- Marc L'Eplattenier (StormFace)
- Elisa Roy (Eli2697)
- Frederick Romano (FredRomano)
- Helena Aguiar Valente (hsvalente)
- Vivian Zhang (vzhang)
- Sebastiao Carvalho Martins (BitcoinX)


# 3. Introduction to Ruby on Rails and the MVC framework <a name="ruby"></a>

Ruby on Rails is an open-source framework used to build applications, first released in 2004. Spotify, Airbnb and Twitch are only some examples of sites using Ruby on Rails (Małek, 2020). This full stack framework provides standard default structures for a database, webservice and web pages using the Model-View-Controller pattern (Tutorials Point, n.d.).

While based on the Ruby coding language, Ruby on Rails interacts with other tools. For example, it uses the JavaScript libraries and offers HTML and XML standard output formats, useful for web-page-building. 

Ruby on Rails relies on The Model-View-Controller Pattern, which turns complex application development into a much more manageable process through three interconnected layers. The Model is the backend that contains all the data logic, the View is the frontend or graphical user interface (GUI), whereas the Controller is the brains of the application that controls how data is displayed (Hernandez, 2021).
Ruby on Rails relies on The Model-View-Controller Pattern, which turns complex application development into a much more manageable process through three interconnected layers. The Model is the backend that contains all the data logic, the View is the frontend or graphical user interface (GUI), whereas the Controller is the brains of the application that controls how data is displayed (Hernandez, 2021). As shown in the graph below (Geeks for Geeks, 2018), the user will use the Controller, which in turn manipulates the Model which updates the View to see the user.

<img width="300" alt="image" src="https://user-images.githubusercontent.com/76914261/146533827-00df65cd-2694-4e04-afdb-1cd3f1f6eb62.png">

Some of the main advantages of using Ruby on Rails are that the framework is mature, which ensures stability that creates a hassle-free maintenance. On the other hand, main issues have also been identified. A sometimes-slow performance and difficulty in scaling have been reported. In addition, a mature framework might become boring for coders, hence limiting the interest for the framework (Nowak, 2020).


# 4. Programming languages used in this project <a name="languages"></a>

In order to cover the back-end, front-end and dynamic capabilities of the app, our project consists of 67% Ruby, 21.7% HTML, 8.4% SCSS and 2.9% JavaScript.
We are creating a Ruby on Rails app using Active Record as a layer on top.

As Ruby on Rails was explained above, here are a few lines about what Active Record is:
Rails Active Record is an ORM (object/relational mapping) layer that comes with Rails. It runs between the database and our code. It allows us to automatically generate method names created from the field names of database tables. Each Active Record object uses the CRUD logic (Create, Read, Update, and Delete), and allows us to easily map between the database and our application.

Active Record is automatically generated with the generation of our Ruby on Rails app.

# 5. The code of this project is structured in the following way: <a name="structure"></a>

Before we head into the separate folders, we want to signal that creating a Ruby on Rails app in the terminal automatically generates many different folders and files that are required for the well-functioning of the program, but that we have never touched or even opened. Thus, the following part will focus only on the folders and files, on which we have worked on.

This schema wonderfully summarizes how a Ruby on Rails project is structured:

<img width="716" alt="image" src="https://user-images.githubusercontent.com/76914261/146337702-15701f82-dbcf-439a-9b55-d1eb443cd62a.png">

## The app folder
The app folder contains all the code necessary to make the program work. This is where we spent the most time on, as this is the part where the back-end and the front-end are established.

This folder is further composed of different important sub-folders:
- *Assets*: this folder contains all the code related to the CSS components needed for our front-end. The important folder there is "Stylesheets" in which we have listed the code for some of the style components that we use repeatedly in our code. This enables us to store the code in that file and be able to link back to it in our code
- *Controllers*: this is one of the most important folder, as the Controllers are seen as the "brains" of our code. The controllers will make the links between the other different files. It's in these files that each of the actions we have available on our app are initiated. In our case, we have one controller per "model" that we use in our app, as well as a controller called pages_controller, which is the controller linked to the homepage.
- *Javascript*: the little JavaScript that we have is initiated in these files, which are mostly automatically generated when we initiate the ruby on rails app in our terminal. This is where most of the JavaScript code would go if we had time to add more.
- *Models*: the models relate to the various elements we have in our app. In our case, we have books, bookings and individual users who can log into our app. Thus, these need to be "modeled" and especially linked to our database tables. This is the purpose of the models when using Active Record.
- *Views*: the views allow us to make the transition from the back-end to the front-end. They serve as the interface to the public and thus everything that is added there will affect what is displayed on our app. Different 'views' files need to be added for each function of each model. Typically these files are written in ERB (embedded ruby) which is HTML code with Ruby code embedded in it.

## The config folder
As its name says, the config folder is crucial, as it configures all components of the app, as well as the app itself. Diving too much into this folder is useless, as most of the files were created automatically, as we were progressing throughout the development of the app and the database. However, two sub-folders in particular are worth mentioning:
- *Database.yml*: this file – written in yaml – sets the foundations for our database. We can see that we are using postgresql as our database adapter. Postgresql works better than other adapter such as SQLite when it comes to user management and more advanced apps. Postgresql is completely open source and offers much documentation if needed
- *Routes*: this file is particularly important, as it serves as the main routing file for our app. The routing allows us to link our various urls (e.g. renting-knowledge/new) to the respective controller and model. It's in this file that these connections are made. If we were to add more pages and functionalities on the app, we would first have to create an additional route in this file.

## The db folder
This folder contains everything linked to our database.
- *Migrate*: this file contains all of our migrations to the database. When we run "rails db:migrate" in the terminal, it creates an additional migration, which saves our changes to the database. These migrations are stored there with the respective timestamp and name of file automatically generated.
- *Schema*: this file contains the whole schema of our database. This file is auto-generated when we migrate our changes to the database. It's very useful to check the connections between the elements of our app and discover any types of bugs that may arise. It also gives us the type of each element in our app.
- *Seeds*: in this file we have created all our examples for the app. To populate an empty app with books, bookings, and users to showcase the functionality of this app, we had to manually add them to this file. This is generated when we run "rails db:seed" in the terminal.

## Other important file that is not a folder
Finally, the last important file worth mentioning is the GemFile which contains all the gems that had to be installed to make the app work. Most of them were generated automatically when we created the Ruby on Rails app, while others had to be added manually, as we were adding functionalities to the app (e.g. the devise gem, the cloudinary gem, the pg search gem...). This file is then saved into the code when we run "bunde install" in the terminal.

# 6. How to run the app? <a name="running"></a>
**Disclaimer 1: This is a MOBILE app, thus when accessing the website, please re-size your screen to 375x667 – the size of Iphones 6/7/8/9 to profit from the best design experience. You can do that on Firefox or Chrome by right-clicking, clicking on inspect, and changing the dimensions there**.

**Disclaimer 2: We have included a log-in system so that only logged in users can access the details of a certain book. Thus, please create an account / log-in before you start using the app to ensure that you will be able to use all functionalities! Otherwise, an error called "Undefined method books for nil" will appear**.

## Easily run app on website (hosted on Heroku Cloud platform)
This mobile app is hosted on the cloud platform Heroku and can easily be accessed and used following this link: https://renting-knowledge2021.herokuapp.com/

**PLEASE SEE BOTH DISCLAIMERS ABOVE FOR THE IDEAL APP EXPERIENCE: 1. RESIZE TO MOBILE, 2. LOG-IN/SIGN-IN FIRST TO ACCESS EVERYTHING**

## Running app locally on computer (not recommended, as much setup to do)
**Disclaimer: Ruby on Rails needs to be installed on your computer. If it's not, follow the first steps of this tutorial: https://www.sitepoint.com/building-your-first-rails-application-models/**.
1. The ZIP file of this code can be downloaded from our GitHub page above
2. From the terminal on your computer, move into the right folder where the ZIP file is by changing directories using the cd command
3. Once the right file is selected, run "rake db:create:all" and "rake db:migrate" to create and migrate the database, as well as "rake db:seed" to seed all examples on your computer
4. Then, you can open a local server with the following command: "rails s". This will open a local server on your computer, which you can open in your browser. Names might change according to the computers, but our local server was called localhost:3000/

# 7. How to navigate the app <a name="navigate"></a>
As a guide to use the app, here are the various features available (please see part 7 "screenshots" for visual examples)

**Disclaimer: This is a MOBILE app, thus when accessing the website, please re-size your screen to 375x667 – the size of Iphones 6/7/8/9 to profit from the best design experience. You can do that on Firefox or Chrome by right-clicking, clicking on inspect, and changing the dimensions there**

1. The homepage possesses a navigation bar allowing you to directly move to any page of your choosing. On the top left, you MUST LOG IN / CREATE AN ACCOUNT to be able to fully use the functionalities. You can also directly search for a certain book title, book author or user on the search bar.
2. Under "share a book", you can add your own listing with the book info and your preferred picture of the book which you can upload from your computer.
3. After having uploaded your book and at any time, you can edit/delete your book by going into your own book. Additionally, at the bottom of your own book, you can see how much money you have made with renting your book
4. Under "all books", you can have a look at all the listings available on the platform and decide to click on the books that interest you to get more information (ONLY IF LOGGED IN).
5. In the details of a specific book, you can "book the book" for a certain timeframe. Once you book the book, it creates a new booking for you so that you can follow your order and know when to return it. Also, it gives you the email address of the person you need to contact to get in touch.
6. Finally, under profile, you have a summary of all your bookings AND a list of all of your books listed on the platform. Next to your books, you'll have a green bookmark logo if your book is available, and a red bookmark logo if your book is currently rented.

# 8. Screenshots <a name="screenshots"></a>

### Welcome page with our search bar allowing for searches on title, author or keyword
<img width="375" alt="image" src="https://user-images.githubusercontent.com/76914261/146349653-e7f52404-9833-442b-a68b-3b3c206cba45.png">

### Share your book!
<img width="381" alt="image" src="https://user-images.githubusercontent.com/76914261/146351584-adeaf4d7-ba96-4591-ae7e-81f1ccc7e394.png">

### View all listed books
<img width="372" alt="image" src="https://user-images.githubusercontent.com/76914261/146351709-05089e21-dd46-4aae-953e-822533277426.png">

### Check your bookings and your books
<img width="376" alt="image" src="https://user-images.githubusercontent.com/76914261/146351826-16e386cd-a8ea-4527-bf0b-0edb0d7eed7b.png">

### See details of the book you're interested in
<img width="376" alt="image" src="https://user-images.githubusercontent.com/76914261/146351968-c9e29357-81a6-43ed-a7f3-e16e931858f3.png">

### Book the book you want with the dates you want it for!
<img width="369" alt="image" src="https://user-images.githubusercontent.com/76914261/146352056-110404d1-3241-4c34-a9bc-b2da696e8d53.png">

# 9. References <a name="references"></a>

Geeks for Geeks. (2018). MVC Design Pattern. Retrieved from Geeks for Geeks: https://www.geeksforgeeks.org/mvc-design-pattern/

Hernandez, R. D. (2021). The Model View Controller Pattern – MVC Architecture and Frameworks Explained . Retrieved from freeCodeCamp: https://www.freecodecamp.org/news/the-model-view-controller-pattern-mvc-architecture-and-frameworks-explained/

Małek, P. (2020). Everything You Need to Know about Ruby on Rails Web Application Framework. Retrieved from railsware: https://railsware.com/blog/ruby-on-rails-guide/

Nowak, M. (2020). Why Ruby on Rails Is Still a Good Choice in 2021 [UPDATED]. Retrieved from Monterail: https://www.monterail.com/blog/why-ruby-on-rails-development-2021

Tutorials Point. (n.d.). Ruby on Rails - Introduction. Retrieved from Tutorials Point: https://www.tutorialspoint.com/ruby-on-rails/rails-introduction.htm
