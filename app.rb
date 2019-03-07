require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @name = param[:namee].to_s.reverse
end
end
