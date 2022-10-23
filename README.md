# README

# TAMU-FUSE-Media-Hosting
CSCE-431 Project

## Introduction ##

We are going to be creating a hosting platform for FUSE’s workshop videos and PDFs that allows members to search through their existing content. 
It will also allow them to search internship opportunities and apply for them on the platform. 

## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* Rails - 6.1.4.1
* Ruby Gems - Listed in `Gemfile`
* PostgreSQL - 13.3 
* Nodejs - v16.9.1
* Yarn - 1.22.11


## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/aa672/TAMU-FUSE-Media-Hosting.git`


## Tests ##

An RSpec test suite is available and can be ran using:

  `rspec spec/`

## Execute Code ##

Run the following code in Powershell if using windows or the terminal using Linux/Mac

  `cd TAMU-FUSE-Media-Hosting`

  `docker run --rm -it --volume "${PWD}:/TAMU-FUSE-Media-Hosting" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`

  `cd TAMU-FUSE-Media-Hosting`

Install the app

  `bundle install && rails webpacker:install && rails db:create && db:migrate`

Run the app
  `rails server --binding=0.0.0.0`

The application can be seen using a browser and navigating to http://localhost:3000/

## Environmental Variables/Files ##

** Add instructions/description if your application requires it.

## Deployment ##

** Add instructions about how to deploy to Heroku


## CI/CD ##

TBD

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the admins.
