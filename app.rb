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
    @phrase = params[:phrase]
      @number.times do
        @phares
      end
    end
    do
  end
end
