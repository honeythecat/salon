README

Salon Owner's Directory description: If you own your own salon that happens to be
called Coney Island Salon, then this app is for you!! It will allow you to add
stylists to your database, list your stylists, and add clients to each stylist.
It's almost as fun as playing Oregon Trail!

Ruby version: 2.1.5

How to run the program:
In order to run your Salon Owner's Directory you need to run bundle and make
sure that you have the Sinatra server running and open in your browser. You will
also need to create a postgres database

	CREATE DATABASE salon;
	CREATE TABLE stylists (id serial PRIMARY KEY, stylist_name varchar);
	CREATE TABLE clients (id serial PRIMARY KEY, client_name varchar, stylist_id int);

Known bugs as of 1/23/15:
Index.erb currently won't join correctly to stylists.erb

Heather Anderson. MIT License. Copyright 2015. Created by Heather Anderson. Email: heather@thisisnotanorg.org

Note to self: DUDE! YOU'VE ALMOST GOT THIS DOWN! KEEP BEING POSITIVE AND WEAR YOUR
PITH HELMET MORE OFTEN!!