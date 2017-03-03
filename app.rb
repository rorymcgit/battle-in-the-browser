require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  # enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect('/play')
  end

  get '/play' do
    @one = $player_one
    @two = $player_two
    erb(:play)
  end

  get '/attack' do
    @one = $player_one
    @two = $player_two
    Game.new(@one, @two).attack(@two)
    erb(:attack)
  end

  run! if app_file == $0
end
