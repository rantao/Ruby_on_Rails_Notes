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