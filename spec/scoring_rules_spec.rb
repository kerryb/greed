require "spec_helper"

describe ScoringRules do
  describe "scoring a roll" do
    it "returns 1000 for three ones and no fives" do
      ScoringRules.score([1,1,1,2,3]).should == 1000
    end

    it "returns 500 for three fives and no ones" do
      ScoringRules.score([5,5,5,2,3]).should == 500
    end

    it "returns 400 for three fours and no ones or fives" do
      ScoringRules.score([4,4,4,2,3]).should == 400
    end

    it "returns 300 for three threes and no ones or fives" do
      ScoringRules.score([3,3,3,2,4]).should == 300
    end

    it "returns 200 for three twos and no ones or fives" do
      ScoringRules.score([2,2,2,3,4]).should == 200
    end

    it "returns 100 for a single one and no fives or trebles" do
      ScoringRules.score([1,2,2,3,3]).should == 100
    end

    it "returns 50 for a single five and no ones or trebles" do
      ScoringRules.score([5,2,2,3,3]).should == 50
    end
  end
end
