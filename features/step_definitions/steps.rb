Given %r/^we start a new game with (\d+) players$/ do |number_of_players|
  @game = Game.new number_of_players
end

When %r/^player (\d+) throws (.*)$/ do |player, throws|
  pending # express the regexp above with the code you wish you had
end

Then %r/^player (\d+)'s score is (\d+)$/ do |score|
  pending # express the regexp above with the code you wish you had
end
