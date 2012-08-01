## STEP BY STEP TO GET A DYNAMIC WEB APP UP AND RUNNING

## to be run from the command prompt $

$rails new [project_name_here]  		# makes a new rails project
$subl .									# opens all the pertaining files in sublime
$git init								# initialized your local git repository
$git add .								# add all the pertaining files to your git repo
$git commit - m "Initial Commit"		# commits the initial commit to local repo
<< set up new repo on gitHub >>
$git remote add origin git@github.com/[username]/file_name.git 	# adds the remote github repo to your project
$git push -u origin master				# pushes all the changes up to the remote github repo as master branch
<< updated GEMFILE to include required gems >>
$bundle install --without production	# this installs all the gemfiles we added in GEMFILES

########## TO GENERATE MANUALLY #############
## now we should set up our migration database as part of generating a model
$rails generate model NameOfModelInCamelCase field1:string field2:string
## or only generate a model
$rails generate migration name_of_db_in_lower_case  #start the name with the action verb

#### OR USE SCAFFOLD TO DO WORK FOR YOU AUTOMAGICALLY #####
$rails generate scaffold NameOfModelClassSingular column1:type column2:type # rails creates all the files/folders needed for the new database table and migrated the datebase CreateClass and file name is [timestamp]_create_class
$bundle exec rake db:migrate 			#created the table name_of_model_class_plural
<< now start the rails server >>
$rails s 								#runs the rails server. go to localhost:3000 to check it out
## URIs are created including the 7 actions for the class: index, show, new, edit etc...
<< http://localhost:3000/modelclass/new for example >>

$rails console							# open up rails console to add some sample data to the db
## add some new entries in the console
>> n = ModelClass.new 
>> n.field1 = "something" 
>> n.field2 = "else"

## Add a new controller: models_controller.rb
class ModelsController < ApplicationController
	#add methods to define each action for the controller
	def new
	end
	def index
	end
	def show
	end
	def edit
	end
	.
	.
	.
end

## Add the routes in order to tell what to do for each routes
ProjectName.Application.routes.draw do
	resouces :model_class  				# this will add the default routes for the 7 actions built in
end

## Add a new view for your model class at views/modelname/action_name.html.erb
<new.html.erb>
<h1>What ever you want to go here just basic html stuff</h1>

## Update the model controller action methods with what you want to display
def show
	@model_instance = ModelClass.find(params[:id])
end

# Now you can access the values of that instance variable @model_instance and display it in the view show.html.erb
<h1>Field1 is: <%= @model_instance.field1 => </h2>
