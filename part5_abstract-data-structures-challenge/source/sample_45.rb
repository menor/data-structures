# 1. Describe
#An priority queue works the same way the queue does, which means that you push 
#elements at the end of the queue, and you pick the element in the queue by taking 
#the first element of the queue sorted by priority

# ------------
# 2. Implement

class PriorityQueue
 
  def initialize
    @queue = {}
  end
 
  def enqueue(item, priority = 0)
    @queue[item] = priority
    @queue.sort_by { |k, v| v }.reverse
  end
 
  def dequeue
    raise "Queue underflow - Queue is empty" if self.empty?
    @queue.shift
  end
  
  def update(item, priority)
    @queue[item] = priority
  end

  def size
    @queue.length
  end
 
  def print
    puts @queue
  end
 
  def empty?
    @queue.empty?
  end
 
 
end

todolist = PriorityQueue.new
todolist.enqueue("assessment",10)
todolist.enqueue("groceries",1)
todolist.enqueue("laundry",5)
todolist.print
puts todolist.dequeue
todolist.print
todolist.enqueue("groceries",6)
todolist.print


# ------------
# 3. Get real

#A real life application of an ordered list can be a todolist, on which we add items,
#that we want to do by priority, we can update the list, check if the list is empty
#print our todolist and so on
