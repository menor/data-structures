# 1. Describe

#  A Deque is an abbreviation for Double-Ended queue, which is an abstract data structure that allows
#  for both First-In-First-Out (queue) and Last-In-First-Out (deque) list capabilities. Deque have the
#  ability to add or remove elements from either the beginning or end of the list, as well as the 
#  ability to examine the first or last element of the list at any time. A deque may or may not have 
#  a size limit.
 


# ------------
# 2. Implement
 

class Deque
 
  def initialize(max)
    @list = []
    @max_size = max
  end
  
  def prepend(element)
    puts "Can't add any more to deque...the deque is full!" if self.full? == true  
    @list.unshift element
  end
 
  def append(element)
    puts "Can't add any more to deque...the deque is full!" if self.full? == true  
    @list.push element
  end 

  def remove_first
    raise "Can't remove element...the deque is empty!" if self.empty?
    @list.shift
  end

  def remove_last
    raise "Can't remove element...the deque is empty!" if self.empty?
    @list.pop
  end

  def peek_first
    @list.first
  end

  def peek_last
    @list.last
  end
 
  def empty?
    @list.empty?
  end
 
  def full?
    @list.size == @max_size ? true : false
  end
end
 

#### Driver code #################
airport_line = Deque.new(5)
 
puts airport_line.empty? 

airport_line.append("Travis")
p airport_line
puts
airport_line.append("Renatta")
airport_line.append("Brick")
p airport_line
puts
airport_line.remove_first
p airport_line
puts
airport_line.append("Ken")
puts "#{airport_line.peek_first} is at the front of the line."
puts
airport_line.prepend("Molly")
puts "Now, #{airport_line.peek_first} is at the front of the line."
puts
p airport_line
puts
airport_line.append("Avanish")
p airport_line
puts
puts "#{airport_line.peek_last} is at the back of the line."
airport_line.remove_last
puts
puts "Now, #{airport_line.peek_last} is at the back of the line."
puts
airport_line.remove_first
p airport_line
puts
airport_line.append("Brian")
airport_line.append("Stephan")
puts airport_line.full?
airport_line.append("Nathaniel")



 
# ------------
# 3. Get real

# Airline ticket counters and/or help desks operate much like a Deque. Most customers enter the line 
# at the back and exit the line at the front once they've been serviced. However, in certain special 
# circumstances, such as the customer being asked to return to once they've done something (get wallet,
# security searches bag, etc.), or posibly in the case of priority customers, the customer may be 
# allowed enter the line at the front and be serviced before those already in the line.







