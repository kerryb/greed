require "spec_helper"

describe Game do
  let(:player1) { mock :player1 }
  let(:player2) { mock :player2 }
  let(:game) { Game.new player1, player2 }

  it "exposes players' scores" do
    player1.stub(:score).and_return 10
    player2.stub(:score).and_return 100
    game.scores.should == [10, 100]
  end
end
