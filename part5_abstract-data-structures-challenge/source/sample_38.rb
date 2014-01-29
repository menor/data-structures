# 1. Describe

# Abstract Data Structure = Set

# A "Set" is used to store a group of elements.  
# One set of data can have mulitple sets of data inside of it.  
# It can be implemented with either arrays or hashes.  The data is in no peticular order, and you can add and delete
# items from the list.  You can also check if the item is contained in the set.  In this representation you cannot
# have repeated elements and you can determine the maximum size of the set. 

# ------------
# 2. Implement
class Set

  def initialize(max_size)
    @array = []
    @max_size = max_size
  end

  def full?
    @array.size == @max_size
  end

  def is_element_of(x)
    @array.include?(x)
  end

  def is_empty?
    self.size == 0
  end

  def size
    @array.length
  end
  
  def add(x)
    raise "This set already contains this element" if @array.include?(x)
    raise "Sorry this set is at the maximum size of #{@max_size}" if self.full? 

    @array.push(x)
  end

  def delete(x)
    @array.delete(x)
  end

  def max_size
    @max_size
  end
end 

my_set = Set.new(7)

my_set.add("a")
my_set.add("b")
my_set.add("c")
my_set.add("d")
my_set.add("e")
my_set.add("f")
my_set.add("g")
my_set.add("h")

puts my_set.size

puts my_set.delete("a")
puts my_set.size


# ------------
# 3. Get real

A set would be a good use if you wanted to make a program that stored a shopping list.  Usually in a shopping list you do not
have repeated items and the order on the list does not matter.  Once you find something on the list you want it to be removed 
from the list.  You can also check if you have already added a certain item to the list.