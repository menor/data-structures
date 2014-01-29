#1 Describe

# The Abstarct Data structure we used is a Double Ended Queue called a dequeue/.
# It is basically a input restricted deck.

# -It is similar to a astacked data structure

# -Data only be inputed from the head of the dequeue.

# -Data can be removed from either the head or tail of the dequeue.




class Dequeue

  def initialize
    @dequeue_stack = []
  end

  def add_to_head(*value)
    value.each do |num|
    @dequeue_stack.unshift(num)  
    end
  end

  def remove_from_tail
    @dequeue_stack.pop
  end

  def remove_from_head
    @dequeue_stack.shift
  end

  def look_at_head
    @dequeue_stack.first
  end

  def look_at_tail
    @dequeue_stack.last
  end

  def to_s
    p @dequeue_stack
    # @dequeue_stack.each do |value|
    #   p value
    # end
  end  


end

value = Dequeue.new
value.add_to_head(3, 4, 3, "hello")
p value.look_at_head
p value.look_at_tail
puts value


##. Get Real

# This is similar to the queue lines at Disneyland. There is only one entry to the queue
# to the rides at the park and the only way out is either through the ride or back
# out from the start of the queue.