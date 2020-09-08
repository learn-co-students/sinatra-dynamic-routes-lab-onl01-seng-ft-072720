require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do 
      @user_name = params[:name]
      @user_name.reverse 
    end 

    get '/square/:number' do 
      @user_number = params[:number].to_i
      "#{@user_number * @user_number}.to_s"
    end 

    get '/say/:number/:phrase' do 
      str = ""
      @num = params[:number].to_i
      @phrase = params[:phrase]
      @num.times { str += "#{@phrase}\n" }
      str
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
      @operation = params[:operation]
        if @operation == "add"
        "#{@number1 + @number2}"
        elsif @operation == "subtract"
          "#{@number2 - @number1}"
        elsif @operation == "multiply"
          "#{@number1 * @number2}"
        elsif @operation == "divide"
          "#{@number1 / @number2}"
        end 
    end 



end