require "player"

class Game
  def initialize *players
    @players = *players
  end

  def play
  end

  def scores
    @players.map(&:score)
  end
end
