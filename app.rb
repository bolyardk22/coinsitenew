require 'sinatra'
require_relative 'coins.rb'

get '/' do
	erb :index
end

post '/index' do
	num1 = params[:num1]
	coin_hash = params[:coin_hash]
	coin_hash = change_string(change_hashes(num1.to_f))
	redirect '/coin_return?num1=' + '&num1=' + num1 + '&coin_hash=' + coin_hash
end

get '/coin_return' do
	num1 = params[:num1]
	coin_hash = params[:coin_hash]
	erb :coin_return, :locals=> {:num1=>num1,:coin_hash=>coin_hash}
end

post '/coin_return' do
	num1 = params[:num1]
	coin_hash = params[:coin_hash]
end