require 'rspec'
require_relative 'dog'

RSpec.describe Dog do
  subject { Dog.new }

  describe "#bark" do
    it 'returns "Woof!"' do
      
      expect(subject.bark).to eq("Woof!")
    end
  end

  describe "#feed" do
    context "when the dog is hungry" do
      subject { Dog.new(hunger_level: 7) }

      it "eliminates hunger from dog"do
      subject.feed
      expect(subject).to_not be_hungry
      end
    end
    context "when the dog is not hungry" do
      
      subject { Dog.new(hunger_level: 3) }
      it 'returns "Thanks, not hungy bro!"' do
        
        expect(subject.feed).to eq("Thanks, not hungy bro!")
      end  
    end
  end

  describe "#hungry?" do
    context "when hunger level is more than 5" do
      subject { Dog.new(hunger_level: 7) }
      it "returns true" do
        expect(subject).to be_hungry
      end
    end
    context "when hungry level is less or equal to 5" do
      subject { described_class.new(hunger_level: 5) }
      it "returns false" do
        # hungry_dog = described_class.new(hunger_level: 5)
  
        expect(subject.hungry?).to eq(false)
      end
    end
    

  end
end