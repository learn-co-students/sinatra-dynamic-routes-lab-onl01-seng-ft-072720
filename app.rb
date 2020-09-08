require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number_squared = params[:number].to_i**2
    "#{@number_squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    concat = ''

    @number.times do
      concat+=@phrase
    end

    concat
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    operator = nil

    case @operation
      when "add"
        operator = "+"
      when "subtract"
        operator = "-"
      when "multiply"
        operator = "*"
      when "divide"
        operator = "/"
    end

    "#{params[:number1].to_i.send(operator, params[:number2].to_i)}"

  end

end