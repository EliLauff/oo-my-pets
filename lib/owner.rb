# frozen_string_literal: true

class Owner
  # code goes here
  @@all = []
  attr_accessor :pets, :name
  attr_reader :species
  def initialize(name)
    self.pets = { fishes: [], cats: [], dogs: [] }
    self.name = name
    @species = 'human'
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(pet_name)
    new_fish = Fish.new(pet_name)
    pets[:fishes] << new_fish
  end

  def buy_cat(pet_name)
    new_cat = Cat.new(pet_name)
    pets[:cats] << new_cat
  end

  def buy_dog(pet_name)
    new_dog = Dog.new(pet_name)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    pets[:fishes].each do |fish|
      fish.mood = 'nervous'
    end
    pets[:cats].each do |cat|
      cat.mood = 'nervous'
    end
    pets[:dogs].each do |dog|
      dog.mood = 'nervous'
    end
    self.pets = { fishes: [], cats: [], dogs: [] }
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end
