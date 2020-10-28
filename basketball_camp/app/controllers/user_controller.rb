
class UserController < ApplicationController

    get '/users/signup' do 
        # "this is the signup route"
        erb :'/users/signup'
    end

    # post '/users/signup' do
    #     @user = User.create(username: params[:username], password: params[:password])
    #     redirect "/users/#{@user.id}"
    # end


    post '/users/signup' do 
        if params[:username] == "" && params[:password] == ""
            redirect "/users/signup"
        else
            @user = User.create(username: params[:username], password: params[:password])
            # binding.pry
            sessions[:user_id] = @user.id
            redirect "/users/#{@user.id}"
        end
    end
    
    get '/users/login' do
        #if user is logged in 
        #redirect to their home page
        #else, show them the login form
        if logged_in?
            @user = User.find(session[:user_id])
            redirect "/users/#{@user.id}"  
        else
        erb :'/users/login'
        end

    end


    post '/users/login' do
        #want to find user, if exists
      @user = User.find_by(username: params[:username])
      #authenticate password
      #if  params[:password] == @user.password
        #salt or encrypt your password
    #   end
      
    # end

    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect "/users/#{@user.id}"
        #authenticate password
    else
        redirect "/users/login"
        #not vali
        #redirect to login
    end
end

       

    get '/users/:id' do
        #"this is the show page"
        @user = User.find(params[:id]) 
        erb :'/users/show'
    end

    get '/users/logout' do 
        sessions.clear
        redirect '/users/login'
    end

end