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

Users do not need to install environmental variables to allow the application to run. It is worth noting that the cloud service used is Cloudinary - the credentials can be found and updated in TAMU-FUSE-Media-Hosting/config/cloudinary.yml 

## Deployment ##

To deploy the application to Heroku please do the following:

1. From the Heroku Dashboard - Click the New button in the top right of your app list and select Create new pipeline

2. Follow the instructions to create a new pipeline.
     2a. Enter pipeline name

     2b. Find the branch you are trying to connect.

     2c. Connect the GitHub repo

     2d. Click Create Pipeline button

     Note: if there’s no app in a pipeline, the pipeline will disappear. Therefore we need to configure some apps as default.

3. Enable Review Apps. Do NOT select any options for this assignment. Click “Enable Review Apps” right away.

4. Click “New app” in Review Apps. Choose the test branch. After you click “Create”, Heroku will start deploying immediately. Every time you make changes to the test branch, it triggers automatic deployment.

5. Install Heroku CLI from here based on your os. (https://devcenter.heroku.com/articles/heroku-cli)

     5a. After installing type Heroku login on your terminal and follow the instructions on the command line to log in.

     5b. We also need to create an app for staging. Enter the following "heroku create --stack heroku-20 <CHANGE NAME>" - This command will create an app and go to      GUI pipeline and select add app under staging and select this new app you just created with CLI.

6. Click on the <CHANGE NAME>. Click Deploy. Choose the main branch for Automatic Deploys.


## CI/CD ##

The process for implementing CI/CD was straightforward - essentially following the instructions provided in Lab 3. The workflow for GitHub actions is located in /.github/workflows/workflow.yml. 

For the workflow.yml to function properly please run bundle install so 'rexml', 'rspec-rails', 'brakeman', 'rubocop' gems are functioning. 

CD is mentioned in the deployment to Herko section of this read.me. Every time a change is made to the test branch it is automatically deployed to Heroku.

## Support ##

Admins looking for support should first look at the application help page or the Support Video located in the Main branch.
Users looking for help should seek assistance from the admins.
