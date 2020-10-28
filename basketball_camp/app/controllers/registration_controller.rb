class RegistrationController < ApplicationController

    #create
    get '/registerations/new' do
        erb :'/registeration/new'
        #"render registration form"
    end

    post '/registrations/' do
        "process our form"
        @registration = Registration.create(
            address: params[:address],
            favorite_player: params[:favorite_player],
            player_position: params[:player_position],
            jersey_number: params[:jersey_number]
        )
        redirect "/registrations#{@order.id}"
    end

     #read
     get '/registrations/:id' do
        @registrations = Registration.find(params [:id])
        erb :'/registrations/show'
    end

    get '/registrations' do
        @registrations = Registration.all #returns array
        erb :'/registrations/index'
    end

     #update

     get '/registrations/:id/edit' do
        @registration = Registration.find(params[:id])
        erb :'/registrations/edit'
    end
    post '/registrations/:id' do
        @registration = Registration.find(params[:id])
        @registration.update(
            address: params[:address],
            favorite_player: params[:favorite_player],
            player_position: params[:player_position],
            jersey_number: params[:jersey_number]
        )
        redirect "/registrations/#{@registration.id}"
    end

    #delete

    delete '/registrations/:id/delete' do
        @registration = Registration.find(params[:id])
        @registration.destroy
        redirect '/registrations'
    end





end