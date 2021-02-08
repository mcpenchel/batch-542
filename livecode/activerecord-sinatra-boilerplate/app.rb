require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# For every HTTP/HTTPS Request we have methods / verbs
# Client makes a Request, Server responds with a Response
#
# GET (the Client is ASKING for information)
# POST (the Client wants to CREATE something in the server)
# PUT / PATCH (the Client wants to UPDATE something in the server)
# DELETE (the Client wants to DELETE something in the server)

# This is the homepage!
# As a user I can list all the restaurants
get "/" do
  @restaurants = Restaurant.all

  erb :index
end

# As a user I can see one restaurant's details
get "/restaurants/:id" do
  params[:id] # => 14

  @restaurant = Restaurant.find(params[:id])

  erb :show
end

# As a user I can add a restaurant
post "/restaurants" do
  @restaurant = Restaurant.new(
    name: params[:name],
    address: params[:address],
    food_type: params[:food_type],
    rating: params[:rating]
  )
  @restaurant.save

  erb :show
end