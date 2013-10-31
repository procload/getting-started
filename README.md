# Getting Started Guide

Barefoot is using [Middleman](http://middlemanapp.com/guides/getting-started), [Susy Grid Framework](http://susy.oddbird.net/) and [Bootstrap]('http://getbootstrap.com') for rapid prototype front-end development and design.

## Setup Instructions

* `git clone -b git@github.com:procload/getting-started.git YOUR_PROJECT_NAME`
* `cd YOUR_PROJECT_NAME`
* `bundle`
* `middleman`

## Deploying
The Fuels site is managed on two separate environments hosted on
Heroku. The staging environment is intended to be seen internally and
production is for sharing with the client.

### Staging
* `rake staging:deploy`

### Production
* `rake production:deploy`

## Heroku Setup in Git

    git remote add production git@heroku.com:emf-prod.git
    git remote add production git@heroku.com:emf-staging.git *Coming
    Soon*

##Differences in Servers
Production: (client-facing, used for presentations)
Staging: (internally-facing, used for experimental changes) *Coming
Soon*

Name | URL | Username | Password |
:------------ | :------------- | :------------ | :-------------
**Production** | <https://emf-prod.herokuapp.com/>  | `bbdo` | `webbedtoes`
**Staging** | <https://emf-staging.herokuapp.com/>  | `bbdo` | `staging`
*Coming Soon*

## Basecamp Project
Basecamp: <https://basecamp.com/2124010/projects/4128192-emf-web-project>

