![Imgur](https://i.imgur.com/lq0RgRC.png)

A Comic Trivia Challenge (2 week sprint)
----------------------------------------
### Chaz Simons, Sam Devine, Matthew Kimball, Ted Staros & Christian Valesares


![Ruby](https://img.shields.io/badge/Ruby-v2.7.2-red)

![Rails](https://img.shields.io/badge/Rails-v5.2.6-red)
---

![Imgur](https://i.imgur.com/q7ICv3F.png)

## Have you bragged about your comic knowledge in the past?? Put those claims to the test with this exciting quiz app!

"Bragging Rights" is a trivia competition app that lets you flex that knowledge! Find out how you rank against users from your city, state or country! Users log in with Twitter, and can tweet their scores to challenge friends. 

Take the quiz at [Bragging Rights!](https://shielded-anchorage-65791.heroku.com)

## Tech Stack:
- Rails 5.2.6
- Ruby 2.7.2
- PostgreSQL
- Heroku
- Twitter OAuth v1.0a

## Setup

* From the command line, install gems and set up your DB:
    * `bundle`
    * `rails db:{create,migrate}`
* Run the test suite with `bundle exec rspec`.
* Run your development server with `rails s` to see the app in action.

## Architecture
This app is created with a service oriented architecture. This front-end component sends and receives api calls from our backend to populate questions and record user scores.
The api calls are consumed with a service-facade design pattern to lessen the the amount of data stored and improve performance.
Twitter login is handled by the OmniAuth-Twitter gem.

## The following pages are built for the platform:
- Login
- User Dashboard
- Trivia Questions
- Leaderboard

## APIs

[Open Trivia Database](https://opentdb.com/)
This API was utilized to populate our quiz with comic themed questions.

[IP API](https://ip-api.com/)
Finds a user based on IP address. This allows us to store their location and compare results against other users.

[Twitter API](https://developer.twitter.com/en)
Used in conjunction with OmniAuth-Twitter to allow users to draft tweets about their high scores.
<!-- Potentially add links to the APIs we are using or move the description to this section -->
