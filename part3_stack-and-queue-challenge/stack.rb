# A very basic Stack implemented with an array  
# Makes use of the built in #pop and # push methods that exist for arrays.
class Stack
  def initialize
    @store = []
    @max_size = 6
  end
 
  def push(x)
    raise "Stack Overflow - The stack is full" if @store.size >= @max_size
    @store.push x
  end
 
  def pop
    raise "Stack Underflow - The stack is empty" if self.empty?
    @store.pop
  end
 
  def peek
    @store.last
  end
 
  def empty?
    @store.empty?
  end

  def full?
    @store.size == @max_size
  end
end


# create a new stack
my_stack=Stack.new;

# verify there are no elements on the new stack
puts "The stack is empty? #{my_stack.empty?}"

# add 3 elements to the stack
my_stack.push("ruby")
my_stack.push("is")
my_stack.push("cool")

# since our stack is implemented on array we can add any type of object
my_stack.push(15)
my_stack.push(16)
my_stack.push(5)

# Checks if the stack is full
puts 'Warning, the stack is full' if my_stack.full? 

# if we try to add another one, the max method raises an error
my_stack.push('error')

# look at all the elements in the stack by popping them off one at time

puts "Next Element: #{my_stack.pop}"
puts "Next Element: #{my_stack.pop}"
puts "Next Element: #{my_stack.pop}"
puts "Next Element: #{my_stack.pop}"

# verify there are no elements left on the stack
puts "The stack is empty? #{my_stack.empty?}"

# # what happens if you try to call pop on an empty stack?
# puts "Trying to remove an item from an empty stack ... "
# puts "Next Element: #{my_stack.pop}"