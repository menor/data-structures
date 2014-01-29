#In a Priority queue each element has a priority associated with it. High priority items are processed before items with low priority. Items with the same priority are served according to their order in the queue.

#Priority queues can be used in the real world to organize tasks and manage time. A program that 
#prints packing lists in a shipping center could utilize a priority queue by printing express orders first followed by
#standard shipping orders. 


class PriorityQueue
 
   def initialize
    @store = { "high"=>[], "low"=>[] }
   end


   def insert_with_priority(item, priority)
    @store.fetch(priority).unshift(item)
    
   end

   def pull_highest_priority_element
    raise "No high priority items in queue" if self.high_priority_empty?
    @store.fetch("high").pop
   end

   def pull_lowest_priority_element
     raise "No low priority items in queue" if self.low_priority_empty?
     @store.fetch("low").shift
   end

   def high_priority_empty?
    @store.fetch("high").empty?
   end

   def low_priority_empty?
    @store.fetch("low").empty?
   end

   def peek
    @store.fetch("high").first
   end

end


test = PriorityQueue.new
puts "Check to make sure high and low empty work. Both should return true:"
puts test.low_priority_empty?
puts test.high_priority_empty?


#add items to the stack
test.insert_with_priority("Pay rent", "high")
test.insert_with_priority("Take dog to the vet", "high")
test.insert_with_priority("Get a hair cut", "low")
test.insert_with_priority("Take cans to recycling center", "low")

puts "Oldest high priority item should come out first, should be pay rent:"
puts test.pull_highest_priority_element

puts "Should pull lowest priority item, in this case taking cans to recycle:"
puts test.pull_lowest_priority_element





