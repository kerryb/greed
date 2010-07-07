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

  describe "playing a turn" do
    it "adds the score of a roll of the dice to the current player" do
      dice_roll = mock :dice_roll
      Dice.stub(:roll).and_return dice_roll
      ScoringRules.stub(:score).with(dice_roll).and_return 123
      player1.should_receive(:add_score).with 123
      game.play
    end
  end
end
