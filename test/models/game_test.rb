require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "game has players and they are strings" do 
    game = Game.new(player1: "Samson", player2: "Delilah")
    assert game.player1.is_a? String
    assert game.player2.is_a? String
  end

  test "game without players shouldn't save" do
    game = Game.new
    assert !game.save
  end
end
