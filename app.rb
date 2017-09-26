require 'sinatra'
require_relative "./ToDoManager.rb"

get '/todos/' do
	ToDoManager.index
end

post '/todos' do
	new_todo = params[:todo]
	ToDoManager.create new_todo
end

get '/todos/:id' do
	id = params[:id].to_i
	ToDoManager.show id
end

put '/todos/:id' do
	id = params[:id].to_i
	new_todo = params[:todo]
	ToDoManager.update(id, new_todo)
end

delete '/todos/:id' do
	id = params[:id].to_i
	ToDoManager.delete id
end