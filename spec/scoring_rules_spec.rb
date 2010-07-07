require "spec_helper"

describe ScoringRules do
  describe "scoring a roll" do
    it "returns 1000 for three ones and no fives" do
      ScoringRules.score([1,1,1,2,3]).should == 1000
    end
  end
end
