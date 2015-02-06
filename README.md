README

This is a simple app called Coney Island Salon Owner's Directory. If you own your own salon that happens to be
called Coney Island Salon, then this app is for you!! It will allow you to add
stylists to your database, list your stylists, and add clients to each stylist.
It's almost as fun as playing Oregon Trail!

Ruby version: 2.1.1

Setup:

You will need to create a postgres database:

	CREATE DATABASE salon;
	CREATE TABLE stylists (id serial PRIMARY KEY, stylist_name varchar);
	CREATE TABLE clients (id serial PRIMARY KEY, client_name varchar, stylist_id int);
	
In your terminal inside this project folder:
	gem install bundle
	bundle
	ruby app.rb
	Go to http://localhost:3000 in your browser
	Cross your fingers, click your heels...and theoretically you should now to able to use Coney Island Salon Owner's Directory!
	
Known bugs as of 2/6/15:
No known bugs.

Heather Anderson. MIT License. Copyright 2015. Created by Heather Anderson. Email: heather@thisisnotanorg.org

Note to self: Wow! It didn't take you all day to finish your app; see this as the accomplishment it truly is.
