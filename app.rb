require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    answer = " "
    @num.times do
      answer += "#{@phrase}"
    end
    "#{answer}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    all = params.map do |k,v|
      v
    end
    "#{all.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operator
    when 'add'
      "#{@num1 + @num2}"
    when 'subtract'
      "#{@num1 - @num2}"
    when 'multiply'
      "#{@num1 * @num2}"
    when 'divide'
      "#{@num1 / @num2}"
    end

  end

end
