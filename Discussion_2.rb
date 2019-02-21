require 'pry'

=begin
    1a) I think self is the values input in the initialize method
    1b) Pulls a random quote out of the given quote array
    1c) It is a class method, self is the class of FunnyBots. Will return all people, and quotes.
    1d) Will not work because self.bots refers to the entire class.

    2) We cannot set the tire size because the attr_reader of TIRE cannot be altered after it is insantiated,
    mongoose.gears is a instance method but self.gears is a class method and they cannot work as one, bikes does not exist, and a
    class can't reference an instance style. 
=end

class FunnyBots  
 
    attr_accessor :name, :quotes  
 
    @@bots = []
 
    def initialize(name, quotes)
      @name = name
      @quotes = quotes
      @@bots << self
    end
 
   def random_quote
      self.quotes.sample
    end
 
    def self.bots
      @@bots
    end
 
end
 
  archer = FunnyBots.new("Archer", ["Danger Zone!", "Read a book", "The cumulative hangover would literally kill me"] )
  batman = FunnyBots.new("batman", ["I am batman!", "hi", "howdy"] )

binding.pry
