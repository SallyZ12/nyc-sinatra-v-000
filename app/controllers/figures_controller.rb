class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all

    erb :'/figures/index'
  end

  get '/figures/new' do

      erb :'figures/new'
  end


  post '/figures' do
    @figure = Figure.create(name: params[:figure][:name])
  
    redirect "/figures/#{@figure.name}"
  end

  get '/figures/:id' do
    @figures = Figure.find_by_id(params[:id])

    erb :'figures/show'
  end


end
