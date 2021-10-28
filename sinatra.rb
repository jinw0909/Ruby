require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    'Hello world! hi there'
end

get '/hello/:name' do
    "Hello #{params['name']}!"
end

get '/hello/:name' do |n|
    "Hello #{n}!"
end

get '/say/*/to/*' do
    params['splat']
end

get /\/hello\/([\w]+)/ do
    "Hello, #{params['captures'].first}!"
end

get '/posts/:format?' do
    "post"
end

get '/posts' do
    # matches "GET /posts?title=foo&author=bar"
    title = params['title']
    author = params['author']
    # uses title and author variables; query is optional to the /posts route
end

#define condition
set(:probability) { |value| condition { rand <= value } }

get '/win_a_car', :probability => 0.1 do
  "You won!"
end

get '/win_a_car' do
  "Sorry, you lost."
end

