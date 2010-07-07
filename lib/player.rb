class Player
  def initialize
    @score = 0
  end

  attr_reader :score

  def add_score score
    @score += score
  end
end
