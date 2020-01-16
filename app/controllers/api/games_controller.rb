class Api::GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    render "show.json.jbuilder"
  end
end
