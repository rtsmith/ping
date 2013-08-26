class GamesController < ApplicationController
  def index
    @games = Game.all
    respond_to do |format|
      format.json { render json: @games }
    end
  end

  def show(game)
    logger.info game.id
    respond_to do |format|
      format.json { render json: game }
    end
  end

  def create
    game = Game.create(game_params)
    show(game)
  end

  def destroy
    Game.destroy(params[:id])
    render nothing: true
  end

  private

  def game_params
    params.require(:game).permit(:player1, :player2, :score1, :score2)
  end
end
