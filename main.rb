require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

post "/send" do
  @input_regix = params[:input_regix]
  erb :index
end
