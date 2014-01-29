<<-MAJOR_FUNCTIONS
A set allows the programmer to store unordered, unique objects. I'm implementing a static set, so 
once the set is created, its values can't be changed. The point, then, is to ask the set
about itself, such as whether or not it contains a given object, how many objects it contains,
or to return a list of all its objects. The class can also implement comparing sets to 
each other.
MAJOR_FUNCTIONS

# Implementation

class SpecialSet
  def initialize(*things)
    @things = things.uniq
  end

  def is_element_of?(item)
    @things.include?(item)
  end

  def is_empty?
    @things.empty?
  end

  def size
    @things.length
  end

  def items_in_set
    @things
  end

  def equal?(other_set)
    @things.sort == other_set.sort
  end
end

set = SpecialSet.new("cat", "dog", "cat", "dog", "potato")

puts "How many items are in the set?"
p set.size

puts "Does the set include 1?"
p set.is_element_of?(1)

puts "Does the set include potato?"
p set.is_element_of?("potato")

puts "What's in the set?"
p set.items_in_set

puts "Is the set unordered?"
p set.equal?(["dog", "cat", "potato"])

<<-APPLICATION
A static set is useful if you're storing unique data that you only need to read and compare to 
other sets. 

A person might write a program to allow people to compare their company's HR-ish stats to those
of other companies. The stats are created yearly, so they don't change once they're computed, 
and we want to be able to compare companies and track them over time.

Since each company-year will be a different set, we'll be able to compare them without allowing 
unnecessary changes to them, and since each piece of data should be unique, we don't have to worry
about multiple entries of the same stat. 
APPLICATION