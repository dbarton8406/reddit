[![Build Status](https://travis-ci.org/dbarton8406/reddit.svg?branch=master)](http://travis-ci.org/dbarton8406/reddit)



#Set up the routes first


#Controllers: 

These are the controllers we need to write:

- Posts: Sepehr
- Registrations: Danny
- Session: Danny
- Comments: Sepehr

#Views:

These are the views we need:

- Posts: Sepehr
	- _form.html.erb
	- edit.html.erb
	- index.html.erb
	- new.html.erb
	- show.html.erb
- Registrations: Danny
	- new.html.erb
- Sessions: Danny
	- new.html.erb

#Model Definitions:

##Users

Column:

- first_name
- last_name
- email (add_index)
- password

has_many :posts

##Posts

Columns:

- title, null: false
- url, null: false
- user_id, null: false

Associations:

- has_many :comments
- belongs_to :user

##Comments

- content, null: false
- post_id, null: false

Associations:

- belongs_to :post

#Route Definitions:

##Registrations Routes

- get "signup", to: "registrations#new"
- post "signup", to: "registrations#create"

##Sessions Routes

- get "login", to: "sessions#new"
- post "login", to: "sessions#create"
- delete "login", to: "sessions#destroy"

##Post Routes
- root to: "posts#index"
- get "posts", to: "posts#index"
- get "posts/new", to: "posts#new"
- get "posts/:id", to: "posts#show", as "post"
- post "posts", to: "posts#create", as "post"
- get "posts/:id/edit", to: "posts#edit", as "post_edit"
- put "posts/:id", to: "posts#update"

##Comments Routes

- post "posts/:id/comments", to: "comments#create", as "comments"
