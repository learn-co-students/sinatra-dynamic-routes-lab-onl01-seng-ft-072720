require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    "#{params[:name].reverse}"
  end
  get '/square/:number' do
    "#{params[:number].to_i*params[:number].to_i}"
  end
  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    "#{params[:phrase]@num.times}"
  end
  get 'say/:word1/:word2/:word3/:word4/:word5' do
    "hello"
  end
  get ':operation/:number1/:number2' do 
    "hello"
  end


end