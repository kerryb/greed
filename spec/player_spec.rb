require "spec_helper"

describe Player do
  let(:player) { Player.new }
  it "has an initial score of zero" do
    player.score.should == 0
  end

  describe "adding a score" do
    it "updates the total score" do
      player.add_score 123
      player.score.should == 123
    end
  end
end
