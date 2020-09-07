require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @answer = @name.reverse 

    "#{@answer}"
  end 

  get '/square/:number' do
    @num = params[:number].to_i
    @answer = @num * @num

    "#{@answer}"
  end 
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @answer = ""

    @num.times do |n|
      @answer = @answer + " #{@phrase}"
    end 
    @answer
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s 
    @answer = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

    "#{@answer}"
  end 
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      @answer = @num1 + @num2 
    when "subtract"
      @answer = @num1 - @num2
    when "multiply"
      @answer = @num1 * @num2
    when "divide"
      @answer = @num1 / @num2
    end
    "#{@answer}"
  end 
    
end