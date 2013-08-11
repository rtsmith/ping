class Game < ActiveRecord::Base
  validates :player1, presence: true
  validates :player2, presence: true
end
