class List

  def initialize
    @items = []
  end

  def empty?
    @items.empty?
  end

  def append(item)
    @items.push(item)
  end
  
  def prepend(item)
    @items.unshift(item)
  end

  def head
    @items.first
  end

  def tail
    @items.values_at(1..(@items.size-1))
  end

  def delete_first
    @items.shift
  end

  def size
    @items.length
  end

end


class Queue

  def initialize
    @items = List.new
    @max_size = 6
  end

  def enqueue(item)
    raise "Queue Overflow - The queue is full" if self.full?
    @items.append(item)
  end

  def dequeue
    raise "Queue Underflow - The queue is empty" if self.empty?
    @items.delete_first
  end

  def peek
    @items.head
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