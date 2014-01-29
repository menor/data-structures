# 1. Describe
# A set is a finite(static) or infinite(dynamic) list of unique items in no particular order.
# It can be built from lists of lists
# It can add/remove/iterate through the set of items
# You can set a limit on the number of items the set can hold

# ------------
# 2. Implement
class Set

  def initialize
    @capacity = -1
    @index = 0
    @set = []

  end

  # => build(element1,element2,element3,etc) will build a set of elements and remove duplicates
  def build(*elements)
    elements.length.times do |n|
      @set << elements[n]
      @set.uniq!
    end
    puts "Built new set with elements: #{@set}"
  end

  # => is_element_of(element,set) will return true if element is in the set
  def is_element_of(element)
    p @set.include?(element)
  end

  # => is_empty(set) returns true if the set has 0 elements
  def is_empty
    p @set.empty?
  end

  # => size(set)  returns number of elements in the set
  def size
    p @set.length
  end

  # => iterate(set) one element from the set at a time and keeps track of the last element that was called
  def iterate
    p @set[@index]
    if @index == @set.length - 1
      @index = 0
    else
      @index += 1
    end
  end

  # => enumerate(set) returns the entire set in arbitrary order
  def enumerate
    p @set
  end

  # => create_from(collection) builds set from another list object, returns duplicates
  def create_from(*collection)
    @set = []
    collection.each do |group|
      group.each do |element|
        @set << element
      end
    end
    @set.uniq!
    puts "Built new set with elements: #{@set}"
  end

  # => create() creates a new empty set
  def create
    @set = []
    p "Created empty set."
  end

  # => create_with_capacity(n) creates a new set with a max size of n
  def create_with_capacity(n)
    @set = []
    @capacity = n
    p "Created empty set with capacity of #{n}."
  end

  # => add(set,element) adds element to set
  def add(element)
    if @set.length == @capacity
      p "Set at capacity #{@set.length}/#{@capacity}. Please remove elements before adding #{element}."
    elsif @set.include?(element)
      p "Set already includes #{element}."
    else
      @set << element
      if @capacity > 0
        p "Added #{element}. Capacity #{@set.length}/#{@capacity}"
      else
        p "Added #{element}."
      end
    end
  end

  # => remove(set,element) removes element from set
  def remove(element)
    if @set.include?(element)
      @set.delete(element)
      if @capacity > 0
        p "Deleted #{element}. Capacity #{@set.length}/#{@capacity}"
      else
        p "Deleted #{element}."
      end
    else
      p "Set does not contain #{element}."
    end
  end

  # => capacity(set) returns max number of values that set can hold
  def capacity
    if @capacity > 0
      p "Capacity: #{@set.length}/#{@capacity}"
    else
      p "Capacity not set."
    end
  end
end

animals = Set.new
# 
cats = ["tiger","lion","jaguar","panther","tiger"]
birds = ["eagle","falcon","bluejay","eagle","eagle"]

animals.create_from(cats, birds)
animals.create_with_capacity(3)
animals.add("tiger")
animals.add("lion")
animals.add("lion")
animals.add("dog")
animals.add("falcon")
animals.remove("dog")
animals.add("falcon")
animals.enumerate
animals.capacity

animals.create_from(cats, birds)
animals.add("tiger")
animals.add("lion")
animals.add("lion")
animals.add("dog")
animals.add("falcon")
animals.remove("dog")
animals.add("falcon")
animals.enumerate
animals.capacity

animals.build("tiger","lion","dog","giraffe","tiger","dog","shark",1)
animals.is_element_of("lion")
animals.is_empty
animals.size
animals.iterate
animals.iterate
animals.iterate
animals.iterate
animals.iterate
animals.iterate
animals.iterate
animals.enumerate

# ------------
# 3. Get real
# 
# A set may be useful when considering users to be added to a database.
# It may be used in the real world if you want to create a master list of items out of several other lists while
# maintaining the quality that every item in the set is unique.