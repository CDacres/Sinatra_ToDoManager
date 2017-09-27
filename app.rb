require 'sinatra'
require_relative "./ToDoManager.rb"

#Index - Show all the data
get '/todos/' do
	ToDoManager.index
end

#Create - Create a new todo
post '/todos' do
	new_todo = params[:todo]
	ToDoManager.create new_todo
end

#Show - Show a single record
get '/todos/:id' do
	id = params[:id].to_i
	ToDoManager.show id
end

#Update - Update a single record
put '/todos/:id' do
	id = params[:id].to_i
	new_todo = params[:todo]
	ToDoManager.update(id, new_todo)
end

#Destroy - Delete a single record
delete '/todos/:id' do
	id = params[:id].to_i
	ToDoManager.delete id
end