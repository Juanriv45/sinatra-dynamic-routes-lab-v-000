require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reverse/:name' do
  @name = param[:namee].to_s.reverse
end
end
