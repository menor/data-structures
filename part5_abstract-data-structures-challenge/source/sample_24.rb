=begin
  Double-ended queue

  This is an abstract data structure where it is similar to a queue
  but you can remove/insert an item at either ends of the data
  structure.

  A double-ended queue can be bounded to a limited number of items
=end

class Dequeue
  def initialize(max_size = 50)
    @data = []
    @size = 50
  end

  def insert_front(item)
    @data.unshift item
  end

  def insert_back(item)
    @data.push item
  end

  def remove_front
    @data.shift
  end

  def remove_back
    @data.pop
  end

  def examine_first
    @data.first
  end

  def examine_last
    @data.last
  end

  def clear
    @data = []
  end
end

=begin
  A Dequeue data structure could possibly work for a line at a
  hospital. As more urgent conditions are introduced, they can be
  pushed to the front of the line while non-threatening conditions
  can be pushed to the end of the line.
=end

medical_line = Dequeue.new(5)

medical_line.insert_front "bleeding"
medical_line.insert_back "nausea"
medical_line.insert_front "gunshot"
medical_line.insert_back "headache"

medical_line.examine_first
medical_line.examine_last

medical_line.remove_front
medical_line.remove_back

p medical_line
