require "spec_helper"

describe Player do
  it "has an initial score of zero" do
    Player.new.score.should == 0
  end
end
