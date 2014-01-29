## 1. Describe
 # A dictionary is an associateve array. It is made up of (key, value) pairs
 # that can only appear once in the collection.
 
# ------------
# 2. Implement
 
class Dictionary

  attr_reader :store

  def initialize
    @store = Hash.new { |symbol, word| symbol[word] }
  end

  def add(symbol, word)
    @store[symbol] = word
  end

  def reassign(symbol, word, word2)
    if @store.has_value?(word)
      @store[symbol] = word2
    else
      raise "Word does not already exist!"
    end
  end

  def remove(symbol, word)
    if @store.has_value?(word)
      @store.delete(symbol)
    else
      raise "Word does not already exist!"
    end
  end

  def lookup(symbol)
    @store.fetch(symbol)
  end

  def empty?
    @store.empty?
  end
end

a = Dictionary.new

puts a.empty? == true

p a.add("1", "foo")
puts "a is now #{a.store}" # {"1"=>"foo"}
a.add("2", "Yay!")
puts "a is now #{a.store}" # {"1"=>"foo", "2"=>"Yay!"}
a.reassign("1", "foo", "bar")
puts "a is now #{a.store}" # {"1"=>"bar", "2"=>"Yay!"}
a.remove("2", "Yay!")
puts "a is now #{a.store}"
puts a.lookup("1") # {"1"=>"bar"}

 


