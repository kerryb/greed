Given %r/^we start a new game with (\d+) players$/ do |number_of_players|
  @dice = mock :dice
  @game = Game.new number_of_players
end

When %r/^the player throws (.*)$/ do |throws|
  @dice.stub(:throw).and_return throws.split(", ")
  @game.play
end

Then %r/^player (\d+)'s score is (\d+)$/ do |player, score|
  @game.score_for_player(player).should == score
end
