class Game < ActiveRecord::Base
  validates :player1, presence: true
end
