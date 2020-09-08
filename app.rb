require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = (params[:number].to_i ** 2)
    "#{@squared}"

  end

  get "/say/:number/:phrase" do
    @the_product = ""
    @the_number = params[:number].to_i
    @the_phrase = params[:phrase]
    @the_number.times do
      @the_product += @the_phrase
      @the_product += "\n"
    end
    "#{@the_product}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@number1 + @number2}"
    elsif params[:operation] == "subtract"
      "#{@number1 - @number2}"
    elsif params[:operation] == "multiply"
      "#{@number1 * @number2}"
    elsif params[:operation] == "divide"
      "#{@number1 / @number2}"
    end 
  end

end