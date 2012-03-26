require 'rubygems'
require 'sinatra'
require 'wilksformula'
require 'json'
require 'logger'

#logger = Logger.new("access.log", "daily")
#logger.instance_eval { alias :write :'<<' unless respond_to?(:write) }

# reloader
#set :enviroment, :development
#require 'sinatra/base'
#require 'sinatra/reloader' if development?

$wilksformula_params_list = ['weight','total']
$reverse_wilksformula_params_list = ['weight','formula']

def check_params(params_list,params) 
  params_list.each { |value|
     if !params.has_key?(value)
      return 1
    end  
  }
  return 0
end

def get_wilksformula_object(type,params)
  res_code = 0
  if check_params($wilksformula_params_list,params) == 1
    res_code = 1
  end
  item = {"result" => res_code }

  if res_code == 0
    wf = WilksFormula.new()
    weight = params["weight"].to_f()
    total = params["total"].to_f()
    wf.set_type(type)
    factor = wf.get_factor(weight)
    formula  = wf.get_formula(weight,total)
    res_item = {"weight"=>weight, "total"=>total, "factor"=>factor,"formula"=>formula}
    item["data"] = res_item
  else
    item["error_message"] = 'invalid argument'
  end
  return item
end

get '/wilksformula/female' do
  content_type :json
  item = get_wilksformula_object(0,params)
  JSON.unparse(item)
end

get '/wilksformula/male' do
  content_type :json
  item = get_wilksformula_object(1,params)
  JSON.unparse(item)
end