require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = param[:name].to_s.reverse
     "#{@name}"
  end
end
