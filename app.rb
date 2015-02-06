require 'sinatra'
require 'sinatra/reloader'
also_reload './lib/**/*.rb'
require './lib/stylist'
require './lib/client'
require 'pg'
set :bind, '0.0.0.0'
set :port, 3000

DB = PG.connect({ dbname: "salon" })

get '/' do
  @stylists = Stylist.all
  erb :index
end

post '/clients' do
  client_name = params['client_name']
  stylist_id = params['stylist_id'].to_i
  client = Client.new({ client_name: client_name, stylist_id: stylist_id })
  client.save
  @stylist = Stylist.find(id)
	redirect "/stylists/#{stylist_id}"
end

post '/stylists' do
  stylist_name = params['stylist_name']
  stylist = Stylist.new({ stylist_name: stylist_name, id: nil })
  stylist.save
  @stylists = Stylist.all
  erb :index
end

get '/stylists/:id' do
  @stylist = Stylist.find(params['id'].to_i)
  erb :stylists
end
