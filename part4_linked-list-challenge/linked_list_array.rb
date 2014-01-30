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

end

#DRIVER CODE

list = List.new

# This should return true since the list is empty
puts list.empty?

list.append('The Ramones')
list.prepend('The Kinks')
list.append('The Sonics')
p list.head == 'The Kinks'
p list.tail == ["The Ramones", "The Sonics"]