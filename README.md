# Getting Started Guide

I am using [Middleman](http://middlemanapp.com/getting-started/), [Susy Grid Framework](http://susy.oddbird.net/) and [Bootstrap](http://getbootstrap.com) as a baseline getting-started framework for new sites.

## Setup Instructions

* `git clone -b git@github.com:procload/getting-started.git YOUR_PROJECT_NAME`
* `cd YOUR_PROJECT_NAME`
* `gem install bundler`
* `git remote add production git@heroku.com:app-name.git`
* `git remote add staging git@heroku.com:app-name-staging.git`
* `bundle exec middleman` (to run in your local browser)`
* `bundle exec middleman build` (to generate a build for tagging on the server)`

## Deploying
I typically run two separate sites when developing: Staging and
Production. I host both on Heroku because it's free and easy. If you
want to mimic my setup use the following configuration options with your
own Heroku configuration.

### Staging
* `rake staging:deploy`

### Production
* `rake production:deploy`

## Heroku Setup in Git

    git remote add production git@heroku.com:app-name.git
    git remote add staging git@heroku.com:app-name-staging.git


##Differences in Servers
Production: (client-facing, used for presentations)
Staging: (internally-facing, used for experimental changes)

Name | URL | 
:------------ | :-------------  
**Production** | <https://app-name.herokuapp.com/>   
**Staging** | <https://app-name-staging.herokuapp.com/>  


