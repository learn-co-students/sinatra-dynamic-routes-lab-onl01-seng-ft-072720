require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    # binding.pry
    params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do
    # binding.pry
    @squared = params[:number].to_i * params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @array= []
    params[:number].to_i.times {@array.push(params[:phrase])}
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    erb :say2
  end

  get '/:operation/:number1/:number2' do
    # binding.pry
    @result1 = params[:number1].to_i + params[:number2].to_i
    @result2 = params[:number2].to_i - params[:number1].to_i
    @result3 = params[:number1].to_i * params[:number2].to_i
    @result4 = params[:number1].to_i / params[:number2].to_i
    erb :operation
  end
end