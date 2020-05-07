require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end
  # post '/reverse' do
  #   @last_response = params[:string].reverse
  #   erb :reverse
  # end

  post '/reversed' do
    original_string = params["string"].reverse
    @reversed_string = original_string

    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end
