# 1. Describe
# Sets & Multisets

# ------------
# 2. Implement
class Set
  def initialize
    @set = []
  end

  def add(*items)
  	items.each { |item| @set.push(item) unless @set.include?(item) }
  end

  def remove(item)
    @set.delete(item) { "not found" }
  end

  def peek(item)
    @set.include?(item)
  end

  def empty?
    @set.empty?
  end

  def dump
    @set
  end
end

class Multiset
	def initialize
    @multiset = Hash.new(0)
  end

  def add(*items)
    items.each { |item| @multiset[item] += 1 }
  end

  def remove(item, num = 1)
    @multiset[item] -= num if @multiset.has_key?(item) && @multiset[item] >= num
  end

  def peek(item)
    @multiset.has_key?(item)
  end

  def empty?
    @multiset.empty?
  end

  def count(item)
    @multiset[item]
  end

  def dump
  	dump = []
    @multiset.each { |k, v| v.times { dump << k } }
    dump
  end
end

# A multiset is a collection which is similar to a set but allows repeated, 
# equal values (duplicates). Equal values are considered identical, and 
# are counted (hash), or equal values are considered equivalent, and are stored 
# as distinct items (array).

awesome_neighbor = ["reeses pieces", "butterfinger"]
ok_neightbor = ["hershey bar", "snickers", "milky way", "tootsie pop", "kit kat", "m&ms"]
weird_neighbor = ["pennies", "TRICK!"]

halloween_bag = Multiset.new

20.times do 
  num = rand(10) + 1
  case num
  when 1..2
  	halloween_bag.add(awesome_neighbor.sample)
  when 3..8
  	halloween_bag.add(ok_neightbor.sample)
  when 9..10
  	halloween_bag.add(weird_neighbor.sample)
  end
end

p halloween_bag.dump
puts halloween_bag.peek("butterfinger") ? "SWEET! #{halloween_bag.count("butterfinger")} Butterfingers!" : "DAMN! No Butterfingers!"

# A set on the other hand is an abstract data structure that can store values, 
# without any particular order, and no repeated values.
# Unlike other collection types, rather than retrieving a specific 
# element from a set, it typically tests a value for membership in a set.
# Like and evil Halloween pillow case that that filters candy before 
# it enters the bag.

evil_halloween_bag = Set.new

20.times do 
  num = rand(10) + 1
  case num
  when 1..2
  	evil_halloween_bag.add(awesome_neighbor.sample)
  when 3..8
  	evil_halloween_bag.add(ok_neightbor.sample)
  when 9..10
  	evil_halloween_bag.add(weird_neighbor.sample)
  end
end

evil = evil_halloween_bag.dump
p evil

puts "One of each:"
evil.each { |candy| puts "\t#{candy}" }

# ------------
# 3. Get real

# A solid real world example of sets and multisets would be in the use of Active Record. Querying a database for
# values that only meet a certain requirement. For example, im my Trick or Treat app I could search for items
# with a copper count over 0 and reject them.