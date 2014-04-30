class Queue 

  def initialize
    @items = []
    @max_size = 6
  end

  def enqueue(item)
    raise "Queue Overflow - The queue is full" if self.full?
    @items.push(item)
  end

  def dequeue
    raise "Queue Underflow - The queue is empty" if self.empty?
    @items.shift
  end

  def peek
    @items.first
  end
 
  def empty?
    @items.empty?
  end

  def full?
    @items.size == @max_size
  end

end

my_queue = Queue.new

my_queue.enqueue(1)
my_queue.enqueue(2)
my_queue.enqueue(3)
my_queue.enqueue(4)

p my_queue.dequeue
p my_queue.peek

my_queue.enqueue(5)
my_queue.enqueue(6)
my_queue.enqueue(7)
my_queue.enqueue(7)
my_queue.enqueue(7)
