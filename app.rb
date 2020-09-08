require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @reversename = params[:name].reverse 
    "#{@reversename}"
  end

  get '/square/:number' do 
    @square_number = params[:number].to_i 
    @square_number = @square_number * @square_number
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times { string += "#{@phrase}\n" }
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    string = ""
    arr = []
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    arr << @word1
    arr << @word2
    arr << @word3
    arr << @word4 
    arr << @word5 
    arr.each do |word|
      string += " #{word}"
    end 
    string + "."
  end

  get '/:operation/:number1/:number2' do 
   @number1 = params[:number1].to_i 
   @number2 = params[:number2].to_i
   @operation = params[:operation]

   case @operation
   when "add"
    num = @number1 + @number2
   when "subtract"
    num = @number1 - @number2
   when "multiply"
    num = @number1 * @number2
   when "divide"
    num = @number1 / @number2  
   end 
   num.to_s
  end
end