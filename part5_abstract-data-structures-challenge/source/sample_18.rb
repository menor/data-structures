class Set
  MAX = 5

  def initialize
    @set = []
  end

  def push(val)
    raise 'Set contains Element already' if self.include?(val)
    raise 'Set reached its finite limit' if @set.length >= MAX
    p @set.length
    @set << val
  end

  def include?(val)
    return true if @set.include?(val)
  end
end

my_set = Set.new

my_set.push(1)
my_set.push(2)
my_set.push(3)
p my_set.include?(3)
my_set.push(4)
my_set.push(5)
my_set.push(6)
my_set.push(3)


#Sets are finite data structures that don't have repeated values
# and are not stored in any praticular order
# you can itterate over a set and see if the set
# includes a value however you can not change a value after the set
# is constructed

#Sets could be used to store specific information
#that you do not want changed once they are stored together
# also you don't wan people to see whats in the set unless
# they know the value they are looking for in praticular
