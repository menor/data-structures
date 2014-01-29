# 1. Describe
 
 # A priority queue is an abstract data structure that functions very
 # similarly to a queue, in that it follows the first in, first out
 # principle. However each element in the queue also has a "priority"
 # associated with it. An element with a higher priority is pulled out
 # of the queue before an element with a lower priority, even if the
 # element with the lower priority was pushed to the queue first. If
 # two elements have the same priority, the element that was pushed to
 # the queue is the first to be pulled out.
 
# ------------
# 2. Implement

# David Black - Well-Grounded Rubyist


class PriorityQueue

  def initialize
    @queue = []
  end

  def push_with_priority(elem, priority=0)
    @queue << Hash[[[:element, elem], [:priority, priority]]]
  end

  def find_max_priority
    priorities = []
    @queue.each do |hash|
      priorities << hash[:priority]
    end
    return priorities.max
  end

  def pull
    max = find_max_priority
    @queue.each do |hash|
      if hash[:priority] == max
        result = @queue.delete(hash)
        return result[:element]
      end
    end
    return nil
  end
end

queue_instance = PriorityQueue.new
queue_instance.push_with_priority("string 1", 1)
queue_instance.push_with_priority("string 2", 2)
queue_instance.push_with_priority("string 3", 1)
queue_instance.push_with_priority("string 4", 3)
queue_instance.push_with_priority("string 5", 1)

puts "Tests:"
p queue_instance.pull == "string 4"
p queue_instance.pull == "string 2"
p queue_instance.pull == "string 1"
p queue_instance.pull == "string 3"
p queue_instance.pull == "string 5"


# ------------
# 3. Get real

# A real programming problem that could be solved with
# a priority queue is sending important emails on an
# email server. Typically on a mail server, when a mail
# message is sent, it's added to a queue on the server,
# and the server processes and sends the message over the
# internet when its resources become available. This may not
# be optimal for very important emails that have to be sent
# NOW. We would want these emails to be able to skip the line,
# and be sent as soon as possible. Instead of having to manually
# insert these emails at the top of the queue, and then shifting
# every other email down a spot, you can use a priority queue.
# With a priority queue, even if the email is super important,
# it would only need to interact with the push_with_priority method,
# the same as any other email.