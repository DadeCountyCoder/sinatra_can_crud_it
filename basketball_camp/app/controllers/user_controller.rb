
class UserController < ApplicationController

    get '/users/signup' do 
        # "this is the signup route"
        erb :'/users/signup'
    end

    post '/users/signup' do
        @user = User.create(username: params[:username], password: params[:password])
        redirect "/users/#{@user.id}"
    end

    get '/users/:id' do
        #"this is the show page"
        @user = User.find(params[:id]) 
        erb :'/users/show'
    end
end