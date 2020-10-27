class RegistrationController < ApplicationController

    #create
    get '/registeration/new' do
        erb :'/registeration/new'
        #"render registration form"
    end

    post '/registrations/' do
        "process our form"
      
    end

end