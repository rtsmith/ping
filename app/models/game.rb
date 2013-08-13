class Game < ActiveRecord::Base
  validates :player1, :player2, :score1, :score2, presence: true
end
