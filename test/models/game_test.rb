require 'test_helper'

class GameTest < ActiveSupport::TestCase
  test "players are strings and scores are ints" do 
    game = Game.new(player1: "Samson", player2: "Delilah", score1: "13", score2: "20")

    assert game.player1.is_a? String
    assert game.player2.is_a? String

    assert game.score1.is_a? Integer
    assert game.score2.is_a? Integer

    refute game.score1.is_a? String
    refute game.score2.is_a? String
  end

  test "game without players shouldn't save" do
    game = Game.new
    assert !game.save
  end
end
