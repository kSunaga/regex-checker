require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

post "/" do
  @input_regix = params[:input_regix]
  @object_text = params[:object_text]
  @replased_text = params[:replased_name]
  # option = params[:input_option]

  @is_read = params[:read]

  if params[:replased]
    @result = @object_text.gsub(@input_regix, @replased_text)
  else
    @result = @object_text.match(@input_regix)
  end

  # 後にオプションを実装
  # if params[:replased] && option
  #   @result = @object_text.gsub(@input_regix, "/#{replased_text}/#{option}")
  # elsif !option.empty?
  #   regix = Regix.compile(/"#{@input_regix}/option)
  #   @result = @object_text.match(regix)
  #   p @result
  # else
  #   @result = @object_text.match(@input_regix)
  # end

  erb :index
end
