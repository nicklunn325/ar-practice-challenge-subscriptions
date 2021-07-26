# ActiveRecord Code Challenge Practice - Books

For this challenge there will be three models: `Service`, `User`, and `Subscription`.

The relationships are a `Service` has many `Subscriptions`, a `User` has many `Subscriptions`, and a `Subscription` belongs to a `Shop` and to a `User`. `Services` and `Users` have a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a tool that you can use to test your code. To use it, run `rake console` from the command line. This will start a `pry` session with your classes defined. You can test out the methods that you write here. You are also encouraged to use the `seeds.rb` file to create sample data to test your models and associations.

## What You Start With

You begin with all of the models `Service`, `User`, and `Subscription` created and inheriting from ActiveRecord. You also start with the migration files for the `Services` and `Users` tables.

#### Services Table

| Column | Type   |
| ------ | ------ |
| name   | String |
| price  | Float  |

#### Users Table

| Column   | Type    |
| -------- | ------- |
| username | String  |
| email    | String  |
| age      | Integer |

You will need to create the migration for the `subscriptions` table using the attributes specified in the deliverables below. You may also need to add foreign keys where necessary to establish your relationships.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Remember: Active Record give your classes access to a lot of methods already! Keep in mind what methods Active Record gives you access to on each of your classes when you're approaching the deliverables below.

### Migrations

The first thing you will need to do is to create the migration for the `subscriptions` table. The `subscriptions` table needs to have timestamps as well as a billing_date attribute that stores an integer between 1 and 28 for the day of the month to be billed. You will also need to add any foreign keys to help establish relationships between models.

**Once you have finished your migrations** run your migrations with `rake db:migrate`

**YOU HAVE ALSO BEEN GIVEN A SEEDS FILE** after running your migrations take a look at your seeds file, it creates authors, genres, and books. **_It is not complete_** so be sure to look at it carefully and figure out what is missing.

### Object Relationships

Use ActiveRecord association macros to establish the relationships between the `User`, `Service`, and `Subscription` models.

#### User

- `user#subscriptions`
  - should return an array of all subscriptions belonging to user
- `user#services`
  - should return an array of all the services the user is subscribed to.

#### Subscription

- `subscription#user`
  - should return the user the subscription belongs to
- `subscription#service`
  - should return the service the subscription belongs to

#### Service

- `service#subscriptions`
  - should return an array of all subscriptions belonging to service
- `service#users`
  - should return an array of all userss who have subscribed to this service

### Aggregate Methods

#### User

- `user#list_of_services`

  - should output a numbered list of all the names of the services the user has subscribed to into the console.

- `user#total_cost_of_service`

  - should total the price of all a users subscriptions and return as a float

- `user.order_alphabetically`
  - should return an array of user objects in alphabetical order starting with a

#### Subscription

- `subscription#description`
  - should return string `_name_ subscribes to _service_ for _price_` i.e. _`Nick subscribes to Netflix for 12.99`_

#### Service

- `service#total_subscribers`

  - returns the total number of users subscribing to this service

- `service#total_revenue`

  - returns the total of all subscriptions as a float

- `service.most_popular`
  - returns the service that has the most `#total_subscribers`
