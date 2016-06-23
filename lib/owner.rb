class Owner
  
  @@all = [] 
  attr_accessor :name, :pets
  attr_reader :species


  def self.all 
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def initialize(species)
    @species=species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    newfish=Fish.new(name)
    pets[:fishes] << newfish
  end

  def buy_cat(name)
    newCat=Cat.new(name)
    pets[:cats] << newCat
  end

  def buy_dog(name)
    newDog=Dog.new(name)
    pets[:dogs] << newDog
  end
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood="happy"
    end
  end  

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood="happy"
    end
  end

  def sell_pets
    pets.each_value do |pets|
      pets.each do |pet|
        pet.mood="nervous"
      end
    end
    pets.clear
  end

  def list_pets
     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
      
    end



   


end