
require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "secret"
    end

    get '/' do
        @session = session
        erb :'index'
    end

    post '/checkout' do
      # session[:item] = "item"
      # @session = session
        @item = params[:item]
        session["item"] = @item
        
        erb :'checkout'
    end
end

# get '/hey' do 
#   session["name"] = "Victoria"
#   @session = session
# end