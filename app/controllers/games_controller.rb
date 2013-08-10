class GamesController < ApplicationController
  def show
    @games = Game.all

    respond_to do |format|
      format.json { render json: @games }
    end
  end
end
