# frozen_string_literal: true

require_relative 'job'
require_relative 'pet'

class Human
  attr_reader :money, :pet

  def initialize(name, pet, job, money)
    @name = name
    @pet = pet
    @job = job
    @money = money
  end

  def feed_pet
    pet.feed(30) if @pet.hungry?
  end

  def receive_salary
    @money += @job.get_salary(self)
  end
end
