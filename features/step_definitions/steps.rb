Given %r/^we start a new game with (\d+) players$/ do |number_of_players|
  @dice = mock :dice
  @game = Game.new number_of_players.to_i
end

When %r/^the player throws (.*)$/ do |throws|
  @dice.stub(:throw).and_return throws.split(", ")
  @game.play
end

Then %r/^player (\d+)'s score is (\d+)$/ do |player, score|
  @game.score_for_player(player.to_i).should == score.to_i
end
