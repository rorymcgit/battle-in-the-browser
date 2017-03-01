require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one_id] = params[:player_one]
    session[:player_two_id] = params[:player_two]
    redirect('/play')
  end

  get '/play' do
    @one = session[:player_one_id]
    @two = session[:player_two_id]
    erb(:play)
  end

  run! if app_file == $0
end
