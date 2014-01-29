# 1. Describe
=begin
A priority queue is like a queue in that it follows FIFO if no priority is set.  If a priority is set, the item is inserted at that position (actually position - 1).  The highest priority is 1.  Something with priority 1 is inserted at the 0 index.  Multiple things can be inserted at a given priority level.  The order will be the order in which they were inserted into that priority level.  
=end

# ------------
# 2. Implement

class PriorityQueue
  def initialize
    @store = []
  end

  def add(x, priority = 0)
    if priority == 0 
      @store << [x]
    else
      if @store[priority].nil?
        @store[priority-1] = x
      else
        @store[priority-1] << x
      end
    end
  end

  def pull_highest_priority
    if @store[0].length == 1
      @store.delete_at(0)
    else
      @store[0].delete_at(0)
    end
  end

  def show
    p @store
  end

  def show_items_at_priority(num)
    p @store[num-1]
  end
end

# Test code!!!

test_priority_queue = PriorityQueue.new

test_priority_queue.add(5)
test_priority_queue.add(6)
test_priority_queue.add("hello world!")
test_priority_queue.add([1,2,3])
test_priority_queue.add(6, 10)
test_priority_queue.add("second item!", 3)
test_priority_queue.add("howdy!", 1)

test_priority_queue.show

test_priority_queue.pull_highest_priority
test_priority_queue.show

test_priority_queue.show_items_at_priority(3)

# ------------
# 3. Get real

=begin
A task list is an example of a priority queue.  A task list usually has more functionality than the above though.  In the example above, new tasks are inserted at the end of the queue.  You can set the priority of the tasks when you insert them.  
=end
