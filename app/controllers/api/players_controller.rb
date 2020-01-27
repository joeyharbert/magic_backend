class Api::PlayersController < ApplicationController
  def show
    @player = Player.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @player = Player.find(params[:id])
    @player.life_total -= params[:amount].to_i

    #new commander damage
    if params[:new_commander] == "true"
      CommanderDamage.create(
        player_id: @player.id,
        attacker_id: params[:attacker_id].to_i,
        amount: params[:amount],
        game_id: @player.game_id
        )
    end

    #pre-existing commander damage
    if params[:commander_id]
      cd = CommanderDamage.find(params[:commander_id])
      cd.amount += params[:amount].to_i
      cd.save
    end

    if @player.save
      render "show.json.jbuilder"
    else
      render json: {errors: @player.errors.full_messages}, status: :bad_request
    end
  end
end
