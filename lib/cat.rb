# frozen_string_literal: true

class Cat
  # code goes here
  attr_reader :name
  attr_accessor :mood
  def initialize(name)
    @name = name
    self.mood = 'nervous'
  end
end
