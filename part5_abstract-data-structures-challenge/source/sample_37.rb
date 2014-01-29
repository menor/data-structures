# I implemented a priority queue.
# A priority queue is an abstract data type which is like a regular queue structure, 
# the difference being that each element can be assigned a priority (high or low in my case)
# In a priority queue, 
# an element with high priority is served before an element with low priority. 
# If two elements have the same priority, they are served based upon their order in the queue.

# class PriorityQueue

#   attr_accessor :queue, :priority_queue
#   def initialize
#     @queue = []
#     @priority_queue = []
#     @priority = :low
#   end

#   def size
#     queue.length + priority_queue.length
#   end

#   def empty?
#     queue.empty? && priority_queue.empty?
#   end

#   def first
#     priority_queue.last || queue.last
#   end

#   def last
#     queue.first || priority_queue.first
#   end

#   def push (element, priority)
#     if priority == :low
#       queue.unshift(element)
#     else 
#       priority_queue.unshift(element)
#     end
#   end

#   def dequeue
#     if !priority_queue.empty?
#       priority_queue.dequeue
#     else
#       queue.dequeue
#     end

#   end
# end

class PriorityQueue

  attr_accessor :priority_queue
  def initialize
    @priority_queue = {}
  end

  def size
    priority_queue.length
  end

  def empty?
    priority_queue.empty?
  end

  def first
    priority_queue.keys.sort.each do |priority|
      return priority_queue[priority].first unless priority_queue[priority].empty?
    end
    return nil
  end

  def last
    priority_queue.keys.sort.reverse.each do |priority|
      return priority_queue[priority].last unless priority_queue[priority].empty?
    end
    return nil  end

  def enqueue (element, priority)
    priority_queue[priority] ||= []
    priority_queue[priority].push(element)
  end

  def dequeue
    priority_queue.keys.sort.each do |priority|
      return priority_queue[priority].shift unless priority_queue[priority].empty?
    end
    return nil
  end
end

#create a new queue 
my_queue = PriorityQueue.new;

#verify there are no elements on the new queue
puts "The queue is empty?  #{my_queue.empty?}"


#add 3 elements to the queue
my_queue.enqueue("ruby", 0)
my_queue.enqueue("is", 1)
my_queue.enqueue("cool", 1)

#since our queue is implemented on array we can add any type of object
my_queue.enqueue(15, 0)

puts "Current first: #{my_queue.first}"
puts "Last in queue: #{my_queue.last}"
#look at all the elements in the queue by dequeueping them off one at time 

  puts "Next Element: #{my_queue.dequeue}"
  puts "Next Element: #{my_queue.dequeue}"
  puts "Next Element: #{my_queue.dequeue}"
  puts "Next Element: #{my_queue.dequeue}"

#verify there are no elements left on the queue
puts "The queue is empty?  #{my_queue.empty?}"

#what happens if you try to call dequeue on an empty queue?
puts "Trying to remove an item from an empty queue ... "
  puts "Next Element: #{my_queue.dequeue}"

# A priority queue is used in places like netowrking where certain data packets need to have
# higher priority than others.  An example, would be video traffic versus email traffic.