require "spec_helper"

describe Game do
  it "exposes players' scores" do
    Player.stub(:new).and_return mock(:player1, :score => 10), mock(:player2, :score => 100)
    game = Game.new 2
    game.score_for_player(1).should == 10
    game.score_for_player(2).should == 100
  end
end
