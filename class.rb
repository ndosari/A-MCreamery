require 'sinatra'

get '/' do
    "<html><head></head><body>Hello, #{params[:name]}!</body></html>"
end