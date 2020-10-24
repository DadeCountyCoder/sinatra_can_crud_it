class OrderController < ApplicationController

    #create
    get '/registeration/new' do
        erb :'/registeration/new'
        #"render registration form"
    end

end