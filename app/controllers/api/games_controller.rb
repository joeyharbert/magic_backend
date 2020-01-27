class Api::GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @game = Game.create(playstyle: params[:playstyle])

    if @game.save
      players = params[:players].split(',')
      starting_life = -1

      case @game.playstyle
      when "commander"
        starting_life = 40
      when "brawl"
        if players.length() == 2
          starting_life = 25
        else
          starting_life = 30
        end
      when "standard"
        starting_life = 20
      end
      
      players.each do |player|
        Player.create(
          name: player, 
          life_total: starting_life, 
          game_id: @game.id)
      end
      render "show.json.jbuilder"
    else
      render json: {errors: @game.errors.full_messages}, status: :bad_request
    end
  end
end
