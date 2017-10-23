# WellWish


## About

WellWish is a Ruby on Rails web application designed to assist volunteers find
local, convenient, and skill-relevant contributions.


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
