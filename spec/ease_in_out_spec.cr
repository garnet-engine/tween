require "spec"
require "../src/ease-in-out"

include Garnet

describe Tween::EaseInOut do
  context "0%" do
    it "has 0% progress" do
      tween = Tween::EaseInOut.new(1f32)
      tween.should be_a(Tween)
      tween.complete?.should eq(false)
      tween.linear_fraction.should eq(0)
      tween.fraction.should eq(0)
    end
  end

  context "25%" do
    it "has 25% progress" do
      tween = Tween::EaseInOut.new(1f32)
      tween.update(0.25f32)
      tween.should be_a(Tween)
      tween.complete?.should eq(false)
      tween.linear_fraction.should eq(0.25f32)
      tween.fraction.should eq(0.0625f32)
    end
  end
  
  context "50%" do
    it "has 50% progress" do
      tween = Tween::EaseInOut.new(1f32)
      tween.update(0.5f32)
      tween.should be_a(Tween)
      tween.complete?.should eq(false)
      tween.linear_fraction.should eq(0.5f32)
      tween.fraction.should eq(0.5f32)
    end
  end
  
  context "75%" do
    it "has 75% progress" do
      tween = Tween::EaseInOut.new(1f32)
      tween.update(0.75f32)
      tween.should be_a(Tween)
      tween.complete?.should eq(false)
      tween.linear_fraction.should eq(0.75f32)
      tween.fraction.should eq(0.9375f32)
    end
  end

  context "100%" do
    it "has 100% progress" do
      tween = Tween::EaseInOut.new(1f32)
      tween.update(1f32)
      tween.should be_a(Tween)
      tween.complete?.should eq(true)
      tween.linear_fraction.should eq(1f32)
      tween.fraction.should eq(1)
    end
  end

  context "above 100%" do
    it "has 100% progress" do
      tween = Tween::EaseInOut.new(1f32)
      tween.update(1.5f32)
      tween.should be_a(Tween)
      tween.complete?.should eq(true)
      tween.linear_fraction.should eq(1f32)
      tween.fraction.should eq(1)
    end
  end
end
