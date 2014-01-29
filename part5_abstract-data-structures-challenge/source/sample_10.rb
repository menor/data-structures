# 1. Describe
 # Sets stores data without order, you cannot index it as you would an 
 # array and it does not allow for duplicates, but you can check it to see if it
 # contains a certain value.
 
# ------------
# 2. Implement
class Set
  def initialize 
    @store = []
  end

 def empty?
    @store.empty?
  end

  def add(x)
    @store.push x
  end

  def include?(x)
    @store.include? x
  end
end 

my_set = Set.new; 
## Check to see if a set contains a specific element ##
puts my_set.empty?

 ### Add elements to set ###
 my_set.add(1)
 my_set.add(2)
 my_set.add(3)
 my_set.add(4)
p my_set
## Check to see if a set contains a specific element ##
p my_set.include?(4)


# ------------
# 3. Get real
# Sets can be used for more straightforward data storage that you will never need
#to index.  For instance if you're storing unique date like social security 
#numbers in a set, you could easily access whether or not a paticular SSN is 
#in the set.