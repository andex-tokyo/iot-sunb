require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'
require './models'

ENV['TZ'] = 'Asia/Tokyo'

post '/post' do
    Post.create(name:"#{params[:name]}",content:"#{params[:content]}")
end

get '/' do
    @posts = Post.all
    erb :index
end

get '/post' do
    erb :post
end