require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player_one])
    player2 = Player.new(params[:player_two])
    @game = Game.create(player1, player2)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.opponent)
    erb(:attack)
  end

  post '/back' do
    @game.switch_turn
    redirect('/play')
  end

  run! if app_file == $0
end
