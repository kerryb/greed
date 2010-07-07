require "player"
require "dice"
require "scoring_rules"

class Game
  def initialize *players
    @players = *players
  end

  def play
    roll = Dice.roll
    score = ScoringRules.score roll
    @players.first.add_score score
  end

  def scores
    @players.map(&:score)
  end
end
