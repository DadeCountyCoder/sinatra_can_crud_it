require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'secret'
  end 

  get '/' do
      #"hello world"
      erb :welcome
  
  end


  get "/users/" do
     erb :welcome
    #"Hello World this is my user page"
  end

  post '/users/signup' do
    erb :welcome
  end

  def logged_in? #return a true or false value
    !!session[:user_id]
  end
  def redirect_if_not_logged_in
    unless logged_in?
      redirect '/login'
    end
  end
  
  get '/login' do
    "erb :login"
  end

  #get "/goodbye" do
  #   erb:goodbye
  # end
 end

