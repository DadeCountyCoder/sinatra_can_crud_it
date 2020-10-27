class RegistrationController < ApplicationController

    #create
    get '/registeration/new' do
        erb :'/registeration/new'
        #"render registration form"
    end

    post '/orders/' do
        "process our form"
      
    end

end