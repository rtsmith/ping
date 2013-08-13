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
    @game = Game.create(params[:game])
  end
end
