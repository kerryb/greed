module ScoringRules
  def self.score roll
    score = roll.count(1) * 100
    score += roll.count(5) * 50
    score += 700 if roll.count(1) >= 3
    score += 350 if roll.count(5) >= 3
    [2, 3, 4, 6].each do |n|
      score += 100 * n if roll.count(n) >= 3
    end
    score
  end
end
