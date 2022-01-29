# House App
This is a demo of how to build a fullstack content management system (CMS) using Ruby of Rails. It contains the management of resources such as houses, agents and inspections.

## Pre-requisite
Ruby and Ruby of rails should be installed.
`gem install rails`

## Start the app
`rails server`

## Use the rails console
Use the Rails console to directly interact with your domain model. You can interact directly with ActiveRecord objects.
`rails console`

## See current routes
Rails routes are configured in config/routes.rb. To see current routes and their associated prefixes.
`rails routes`

## Generating models
The following example commands generates active record models
`rails generate model House address:string size:integer sold:boolean bed:integer bath:integer garage:integer image:string`

## Applying db migrations
After generating models you need to applying migrations to change the database schema
`rails db:migrate`

## Generate a migration file
`rails generate migration CreateHousesAgentsJoinTable`

## Applying database seeds
Seeds allow database to be initiated with some sample data. Just use active record in your db/seeds.rb file
`rails db:seed`

## Authentication
Session based authentication is implemented in this demo.
Ensure `gem 'bcrypt', '~> 3.1.7'` in your Gemfile is uncommented and run 
`bundle install`

