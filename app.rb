require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
     "#{@name}"
  end
  get  '/square/:number' do
    @number = params[:number].to_i
    @number_squared = @number * @number
    "#{@number_squared}"
  end
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    post = ""
      @number.times do
        post += "#{@phrase}\n"
      end
    post
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    @phrase = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    "#{@phrase}"
  end
  get '/:operation/:number1/:number2' do
      operation = params[:operation]
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i

      if operation == "add" then
        result =  number1 + number2
      elsif operation == "subtract" then
        result = number1 - number2
      elsif operation == "multiply" then
        result = number1 * number2
      elsif operation == "divide" then
        result = number1 / number2
      end
      result.to_s
  end

end
