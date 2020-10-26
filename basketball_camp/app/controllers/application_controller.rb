require './config/environment'

#Manages non model based routing and sessions
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'secret'
  end

  get "/" do
    erb :welcome
  end

  get "/users" do
    # erb :welcome
   "Hello World this is my user page"
 end

  post '/signup' do
    User.create(name: params[:username], password: params[:password])
    redirect "/goodbye"
  end

  get "/goodbye" do
    erb :goodbye
  end

end
