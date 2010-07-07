Given %r/^we start a new game with (\d+) players$/ do |number_of_players|
  @dice = mock :dice
  players = (1..number_of_players.to_i).map { Player.new }
  @game = Game.new players
end

When %r/^the player throws (.*)$/ do |throws|
  @dice.stub(:throw).and_return throws.split(", ")
  @game.play
end

Then %r/^player (\d+)'s score is (\d+)$/ do |player, score|
  @game.scores[player.to_i - 1].should == score.to_i
end
