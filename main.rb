require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

post "/" do
  input_regix = params[:input_regix]
  object_text = params[:object_text]

  @is_read = params[:read]

  @result = object_text.match(input_regix)

  p @result
  p @is_read

  erb :index
end
