require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    @user = User.find
    erb :welcome
  end

  get "/goodbye" do
    erb :goodbye
  end

end
