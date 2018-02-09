require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $game.players[0]
    @player_2 = $game.players[1]
    erb(:players)
  end

  get '/player_1_attacks' do
    @player_1 = $game.players[0]
    @player_2 = $game.players[1]
    $game.attack(@player_1, @player_2)
    erb(:player_1_attacks)
  end

  run! if app_file == $0
end
