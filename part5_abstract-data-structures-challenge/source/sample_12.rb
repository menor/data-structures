# 1. Describe

# Set is a way to store sets of data. The key thing about Set is that you cannot
# add duplicate items in your set — everything must be unique. However, you can add
# anything to a set (strings, numbers, arrays, etc) as long as there are no duplicates.
# Another key thing is that sets have no order. 

# ------------
# 2. Implement

class Set
  def initialize(set_size = 50)
    @store = []
    @set_size = set_size 
  end

  def full?
    @store.length == @set_size
  end

  def add(item)
    raise "Duplicate - set already has this item" if @store.include?(item)
    @store.push(item)
  end

  def bulk_add(*items)
    items.each { |item| @store.push(item) unless @store.include?(item) }
  end

  def rand(num=1)
    raise "Set Underflow - stack is empty" if self.empty?
    @store.sample(num)
  end
  
  def have_item?(item)
    @store.include?(item)
  end
  
  def empty?
    @store.empty?
  end
  
  def size
    @store.length
  end

end
 
## Driver Code 
my_set = Set.new 
 
#verify there are no elements on the new set
puts "the set is empty?  answer: #{my_set.empty?}"
 
#add element to the set 
puts my_set.add("apple")

#since set is implemented on array we can add any type of object
puts my_set.add(9)

#we can also add multiple elements at a time
puts my_set.bulk_add("chocolate", "donuts", 12)

#see if set includes an item - returns true or false 
puts my_set.have_item?("banana") #=> false
puts my_set.have_item?(9) #=> true 

#if we try to add a duplicate item, we raise an error
begin
  puts "--Trying to add a duplicate item --"
  my_set.add("apple")
rescue RuntimeError => e
  puts e.message
end
 
#if we want to take random number from the set
puts "here is a random item from my set #{my_set.rand}"

#with sets, we might want to see the size of the set
puts "my set size is #{my_set.size}"


# ------------
# 3. Get real

# A real way we could use Sets is to store destinations that an airline serves. 
# Sets work for this because you can't list the same destination (such as San Francisco, CA)
# twice and the order of destinations you add to your set doesn't matter.


