
[![Build Status](https://travis-ci.org/WellWish/wellwish.svg?branch=master)](https://travis-ci.org/WellWish/wellwish)
[![Test Coverage](https://api.codeclimate.com/v1/badges/2feb9ab174274e5b2278/test_coverage)](https://codeclimate.com/github/WellWish/wellwish/test_coverage)
[![Maintainability](https://api.codeclimate.com/v1/badges/2feb9ab174274e5b2278/maintainability)](https://codeclimate.com/github/WellWish/wellwish/maintainability)


# WellWish


## About

There's a problem with volunteering, WellWish sets out to solve that problem.


### The problem

Volunteering is hard. We think that everyone wants to pitch-in, but it's often not convenient, or relavent to you. An overseas placement, or heavily organised project is a big commitment. People with specialised skills or tools could make a huge difference, but it's hard to find a way to give back that makes the most of their abilities.


### The solution

WellWish is a todo list for humanity. It relies on two specific types of contributor:


#### The highlighter

Have you ever had a thought that started with "Someone really ought to..."? It
belongs on WellWish. We're looking for self-contained, atomic,
location-specific micro tasks that will make the word a better place. Just
posting your thought, voting on somebody elses, or joining the conversation
does so much.

E.g "Some of the video games at the local children's hospital aren't working.
Somebody who knows about that stuff ought to fix them."


#### The volunteer

Search tasks based on your location, required skills or tools, score etc.  Join
the conversation, and if you can, make the change. Volunteers simply go out and
complete the listed task. Click 'completed' and provide your evidence (usually
a photo). We'll validate your contribution and make sure it is recorded and
celebrated. Volunteers can be individuals or organisations.


## Outline


### Visitors

- Visitors can view wishes
- Visitors can register to become users
- Registration requires:
  - First name
  - Last name
  - Confirmed Email address
  - Password


### Users

- Users have a public profile with:
  - Profile picture
  - Score
- Users can create wishes
- Users can edit their own wishes
- Users can request permission to edit other users' wishes
- Users can up-vote and down-vote wishes
- Users can comment on a wish
- Users can reply to a comment
- Users can up-vote and down-vote a comment
- Users can claim a wish has been completed by them by providing some evidence
  (e.g. a photograph):
  - Wish status is updated to 'claimed resolved'
  - An email is sent to users who upvoted the wish, showing the evidence and
    asking whether or not the wish has been completed
  - An as-yet-undefined algorithm determines if the task has been successfully
    completed:
    - If the wish has been successfully completed:
      - The status is updated to 'confirmed resolved'
      - The user who completed the wish receives a contributer trophy
      - The completed wish's score is added to the users score
      - An email notification is sent to users who liked the wish advising it
        has been completed
    - If the wish hasn't been successfully completed:
      - The status is updated to 'open'
      - The user claiming to have completed the wish is sent an email advising
        why it hasn't been updated to completed.


### Wishes

- Wishes contain:
  - Title
  - Description
  - Photos
  - Skills required
  - Tools required
  - Score
  - Status:
    - Open
    - Claimed resolved
    - Confirmed resolved


## Installation

```
$ git clone git@github.com:WellWish/wellwish
```


## Configuration

Requires Ruby 2.4.2 and postgresql


### Install dependencies

```
$ bundle install
```


### Create database

```
$ bundle exec rails db:create
```


## Testing

```
$ bundle exec rspec
```


## Run the server

To best replicate the Heroku environment, install the Heroku toolbelt and login. Create a `.env` file in the root directory:

```
RACK_ENV=development
PORT=3000
```

Then run the server:

```
$ heroku local
```


## Contributing

Fork the repo, make the change, submit a PR.


### Linting

```
$ rubocop --rails
```


## Deploying

```
$ git push heroku master
```
