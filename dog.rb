class Dog

  def initialize(hunger_level: 0)
    @hunger_level = hunger_level
  end

  def bark
    "Woof!"
  end

  def hungry?
    @hunger_level > 5
  end

  def feed
    if hungry?
    @hunger_level = 0
    else
      "Thanks, not hungy bro!"
    end
  end
end