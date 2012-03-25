require 'rubygems'
require 'sinatra'

# reloader
set :enviroment, :development
require 'sinatra/base'
require 'sinatra/reloader' if development?

get '/' do
  "Hello World!"
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hellxxxxxo #{params[:name]}!"
end

get '/say/*/to/*' do
  # matches /say/hello/to/world
  params[:splat]
end

get '/download/*.*' do
  # matches /download/path/to/file.xml
  params[:splat]
end

get '/api/formula/:a/:b' do
  # matches /say/hello/to/world
  #params[:splat]
  params.to_s
  #{}"Hellxxxxxo #{params["a"]} #{params["b"]}!"
end

get '/api/reverseformula/' do
  # matches /say/hello/to/world
  #params[:splat]
  params.to_s
  #{}"Hellxxxxxo #{params["a"]} #{params["b"]}!"
end





