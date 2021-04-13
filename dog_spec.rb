require 'rspec'
require_relative 'dog'

describe Dog do
  subject { Dog.new }

  describe "#bark" do
    it 'returns "Woof!"' do
      
      expect(subject.bark).to eq("Woof!")
    end
  end

  describe "#hungry?" do
    it "returns true if hungry level is more than 5" do
      hungry_dog = Dog.new(hunger_level: 7)

      expect(hungry_dog).to be_hungry
    end
    it "returns false if hungry level is less or equal to 5" do
      hungry_dog = Dog.new(hunger_level: 5)

      expect(hungry_dog.hungry?).to eq(false)
    end

  end
end