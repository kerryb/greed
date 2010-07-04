require "player"

class Game
  def initialize number_of_players
    @players = []
    number_of_players.times do
      @players << Player.new
    end
  end

  def play
  end

  def score_for_player player
    @players[player - 1].score
  end
end
