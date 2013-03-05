# Getting Started Guide

[Ample](http://www.helloample.com/) is using [Ruby on Rails](http://rubyonrails.org/) to allow for templating, SASS & CoffeeScript. This is our getting started styles and markup guide. Enjoy.

## Setup

###Get the repo up and running locally:

1. #####Clone the Getting Started Repo into Your New Project#####

  ```
  % git clone git@github.com:ample/ample-getting-started.git my-fancy-new-project
  ```

2. #####Remove the git directory#####

  ```
    $ rm -rf .git
  ```
3. #####Re-init the git repo#####

  ```
    $ git init
  ```
4. #####Add the new origin#####

  ```
    $ git remote add origin git@github.com:ample/your-project.git
  ```
5. #####Add the new files and commit#####

  ```
  $ git add .
  $ git commit -m "Initial commit."
  ```
6. #####Create a new gemset with the name of your project#####

  ```
  $ echo 'rvm 1.9.3@your-project --create' > .rvmrc
  ```
7. #####Move out of the directory and then back in to initialize your gemset#####

  ```
  $ cd ..
  $ cd your-project
    ```
8. #####Install bundler#####

  ```
  $ gem install bundler
  ```
9. #####Install the project's gems with bundler

  ```
  $ bundle install
  ```

10. #####Install Powder

  ```
  $ gem install powder
  ```

11. #####Link Powder to Your Current Project

  ```
  $ powder link
  ```

12. #####Open Your Project in Your Browser

  ```
  $ powder open
  ```
  
## Questions?


Contact developers@helloample.com