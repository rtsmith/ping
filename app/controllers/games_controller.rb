class GamesController < ApplicationController
  def index
    @games = Game.all
    respond_to do |format|
      format.json { render json: @games }
    end
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |format|
      format.json { render json: @game }
    end
  end

  def create
    Game.create(game_params)
    render nothing: true
  end

  private

  def game_params
    params.require(:game).permit(:player1, :player2)
  end
end
