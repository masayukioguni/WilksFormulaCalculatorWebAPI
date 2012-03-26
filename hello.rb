require 'rubygems'
require 'sinatra'
require 'wilksformula'

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

get '/wilksformula/' do
  # matches /say/hello/to/world
  #params[:splat]
  #params.to_s
  wf = WilksFormula.new()
  weight = params["weight"].to_f()
  total = params["total"].to_f()
  res = wf.get_men_formula(weight,total)
  "Hellxxxxxo #{weight} #{total} #{res}"
end

enable :sessions
get '/session' do
  session["count"] ||= 0
  session["count"] += 1
  "count: #{session['count']}"
end

require 'json'
get '/api/items.json' do
    content_type :json
    item = {"apple"=>150, "banana"=>300, "lemon"=>300}
    JSON.unparse(item)
end



get '/wilksformula/json' do
  # matches /say/hello/to/world
  item = {}
  res = 0
  if !params.has_key?('weight')
    res = 1
    item['error_message'] = 'not found weight param'
  end
    
  if !params.has_key?('total')
    res = 1
    item['error_message'] = 'not found total param'
  end
  
  item['result'] = res

  if res == 0
    wf = WilksFormula.new()

    weight = params["weight"].to_f()
    total = params["total"].to_f()
    factor = wf.get_men_factor(weight)
    formula  = wf.get_men_formula(weight,total)

    res_item = {"weight"=>weight, "total"=>total, "factor"=>factor,"formula"=>formula}
    item["data"] = res_item
  end
  content_type :json
  JSON.unparse(item)
end






