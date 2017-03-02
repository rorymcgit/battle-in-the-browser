require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    # session[:player_one_id] = params[:player_one]
    # session[:player_two_id] = params[:player_two]
    redirect('/play')
  end

  get '/play' do
    @one = $player_one.name
    @two = $player_two.name
    erb(:play)
  end

  get '/attack' do
    @one = $player_one.name
    @two = $player_two.name
    erb(:attack)
  end

  run! if app_file == $0
end
