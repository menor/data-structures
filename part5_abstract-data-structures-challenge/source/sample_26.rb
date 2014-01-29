# 1. Describe
A circular buffer is similar to a queue in the sense that the first value is returned first.
Additional data is added to the end of the buffer.
Usually, a circular buffer will overwrite data when full.

# ------------
# 2. Implement
#simple circular buffer
class CircularBuffer
  def initialize(length)
    #Circular buffer of artibrary length
  	@cbuf = Array.new(length)
  	#start pointer
    @s = 0
    #end pointer
    @e = 0
  end

  def insert(data)
  	#Add data to end pointer
  	@cbuf[@e] = data
  	puts "Buffer full. Inserting again will overwrite data." if (@e == @s - 1 || (
  																@e == @cbuf.length-1 && @s == 0 ))
    #Update end pointer
    if @e == @cbuf.length - 1
      @e = 0
    else															
      @e += 1
    end															
  end

#deletes oldest value in buffer and returns it
  def delete
  	temp = @cbuf.delete_at(@s)
  	@s += 1
  	temp
  end
end

#Driver code
buf = CircularBuffer.new(5)
buf.insert(100)
buf.insert(101)
buf.insert(102)
buf.insert(103)
buf.insert(104)  # Will print warning message since buffer is full
puts buf.delete  # Delete oldest value -- returns 100
buf.insert(105)  # Inserts value and prints warning message since buffer is full again


# ------------
# 3. Get real
#A circular buffer is a nice mechanism for tracking the N last items. Items older than the Nth item are
#a don't care. Hence, they can be overwritten. 
