require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  # enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_one]), Player.new(params[:player_two]))
    redirect('/play')
  end

  get '/play' do
    @one = $game.player1
    @two = $game.player2
    erb(:play)
  end

  get '/attack' do
    @one = $game.player1
    @two = $game.player2
    $game.attack(@two)
    erb(:attack)
  end

  run! if app_file == $0
end
