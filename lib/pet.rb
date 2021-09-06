# frozen_string_literal: true

class Pet
  attr_reader :hunger

  def initialize(name, animal_kind, hunger)
    @name = name
    @animal_kind = animal_kind
    @hunger = hunger
  end

  def hungry?
    @hunger >= 60
  end

  def feed(food_amount)
    @hunger -= food_amount
  end
end
