# Getting Started Guide

[Ample](http://www.helloample.com/) is using [Middleman](http://middlemanapp.com/guides/getting-started) to allow for templating, SASS & CoffeeScript. This is our getting started styles and markup guide. Enjoy.

## Setup

###Get the repo up and running locally:

1. Create a new repo at http://github.com/
2. Clone the Getting Started repo

    ```
	$ git clone git@github.com:ample/ample-getting-started.git
	```
	
3. Rename the cloned directory and cd into it
	```
  	$ mv ample-getting-started your-project
  	$ cd your-project
  	```
4. Remove the git directory
	```
  	$ rm -rf .git
	```
5. Re-init the git repo
  	```
  	$ git init
 	```
6. Add the new origin
	```
  	$ git remote add origin git@github.com:ample/your-project.git
	```
7. Add the new files and commit
	```
	$ git add .
	$ git commit -m "Initial commit."
	```
8. Create a new gemset with the name of your project
	```
	$ echo 'rvm 1.9.3@your-project --create' > .rvmrc
	```
9. Move out of the directory and then back in to initialize your gemset
	```
	$ cd ..
	$ cd your-project
  	```
10. Install bundler
	```
	$ gem install bundler
 	```
11. Install the project's gems with bundler
	```
	$ bundle install
	```
## Usage

### Running the server

```
 # Start the middleman server
 $ middleman server
```
### Generate static assets for release:
	```
    $ middleman build
	```
## Questions?

Contact developers@helloample.com