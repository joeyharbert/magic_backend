class Api::PlayersController < ApplicationController
  def show
    @player = Player.find(params[:id])
    render "show.json.jbuilder"
  end
end
