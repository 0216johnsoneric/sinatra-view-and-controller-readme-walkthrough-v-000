require_relative 'config/environment'

class App < Sinatra::Base

  post '/reverse' do
    # @last_response = params[:string]
    erb :reverse
  end

  post '/reversed' do

    original_string = params["string"]
    @reversed_string = original_string.reverse

    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end
