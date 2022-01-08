![Imgur](https://i.imgur.com/UScauwh.png)

A Comic Trivia Challenge (2 week sprint)
----------------------------------------
### Chaz Simons, Sam Devine, Matthew Kimball, Ted Staros & Christian Valesares

![CircleCI](https://img.shields.io/circleci/build/github/samueldevine/bragging-rights-be/main)
![Ruby](https://img.shields.io/badge/Ruby-v2.7.2-red)
![Rails](https://img.shields.io/badge/Rails-v5.2.6-red)
---

## Have you bragged about your comic knowledge in the past?? Put those claims to the test with this exciting quiz app!

"Bragging Rights" is a trivia competition app that lets you flex that knowledge! Find out how you rank against people locally, within your state, or country! Users log in with Twitter, and can tweet their scores to challenge friends. 

Take the quiz at [Bragging Rights!](https://shielded-anchorage-65791.heroku.com)

## Architecture
This app is created with a service oriented architecture. This front-end component sends and receives api calls from our backend to populate questions and record user scores.
The api calls are consumed with a service-facade design pattern to lessen the the amount of data stored and improve performance.

## Schema
<img width="658" alt="Bragging Rights Shcema copy" src="https://app.dbdesigner.net/designer/schema/488102">

## Tools Used:
- Rails 5.2.6
- Ruby 2.7.2
- PostgreSQL
- Heroku (https://shielded-anchorage-65791.herokuapp.com)
- Twitter OAth

## Setup

* From the command line, install gems and set up your DB:
    * `bundle`
    * `rails db:{create,migrate}`
* Run the test suite with `bundle exec rspec`.
* Run your development server with `rails s` to see the app in action.

## The following pages are built for the platform:
- Login
- Dashboard
- Trivia Questions
- Highscores

## APIs

<!-- Potentially add links to the APIs we are using or move the description to this section -->
