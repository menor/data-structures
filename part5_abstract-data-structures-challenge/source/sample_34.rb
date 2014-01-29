## 1. Describe
# A graph is a finite set of pairs, called edges.
# An edge is said to point from a point A to a point B.
# For each element of our data structure (A, B...) we store the adjacent element(s)

#     A                                            
#   /  \                       
#  /    \                                          
# B      C

# Would be stored as below

# Value  |  Adjacents
# -------------------
#   A    |    B, C
#   B    |    A
#   C    |    C

# ------------
## 2. Implement
class Graph
  def initialize
    @graph = []
  end

  def exist?(value)
    value_exist = false
    @graph.each { |edge| value_exist = true if edge[:value] == value }
    value_exist
  end

  def error_exist(value)
    !exist?(value) ? (raise "Error, #{value} doesn't exist in this graph") : nil
  end


  def add(value, adjacents = [])
    adjacents_missing_list = []
    adjacents.each { |adjacent| adjacents_missing_list << adjacent if !exist?(adjacent) }
    if adjacents_missing_list.length != 0
      raise "Error, adjacents #{adjacents_missing_list.inspect} don't exist in the graph"
    else 
      if adjacents.length != 0
        adjacents.each do |adjacent|
          @graph.each do |edge|
            edge[:adjacents] << value if edge[:value] == adjacent 
            edge[:adjacents] << adjacent if edge[:value] == value && !edge[:adjacents].include?(adjacent)
          end
        end
      end
      @graph << {:value => value, :adjacents => adjacents} if !exist?(value)
    end
  end

  def neighbors(value)
    error_exist(value)
    @graph[index_in_graph(value)][:adjacents]
  end

  def index_in_graph(value)
    index_value = 0
    @graph.each_with_index do |edge, index|
      index_value = index if edge[:value] == value
    end
    index_value
  end

  def adjacent?(first, second)
    @graph.each do |edge|
      return true if edge[:value] == first && edge[:adjacents].include?(second)
    end
    false
  end

  def print_graph
    puts "\nYour graph:"
    @graph.each do |edge|
      puts "value: #{edge[:value]}, adjacents: #{edge[:adjacents].inspect}"
    end
    puts""
  end

  def delete_branch(first, second)
    error_exist(first)
    error_exist(second)
    @graph.each do |edge|
      edge[:adjacents].delete_if {|adjacent| adjacent == second || adjacent == first} if edge[:value] == first || edge[:value] == second
    end
  end

  def print_tree(value)
    puts value
    4.times do |i|
      neighbors(value).each_with_index do |son, index|
        case 
        when index == 0 && i == 3
          print son
        when i == 3 
          print " " * index + " " * i + "#{son}"
        when index == 0  
          print "|" 
        else
          print " " * index + " " * i + "\\"
        end
      end
      puts ""
    end
  end

end


graph = Graph.new
graph.add("A")
graph.add("B",["A"])
graph.add("C",["B"])
# graph.add("D",["E","F"])
graph.add("D",["A", "B"])
graph.add("E",["D", "A"])
graph.print_graph
puts "neighbors test1 : #{graph.neighbors("D") == ["A","B","E"]}"
puts "neighbors test2 : #{graph.neighbors("A") == ["B","D","E"]}"
puts "adjacents test1 : #{graph.adjacent?("A","B") == true }"
puts "adjacents test2 : #{graph.adjacent?("C","D") == false }"
graph.delete_branch("E", "A")
puts "\nGraph after deleting the branch E --- A :"
graph.print_graph
graph.add("A",["C"])
graph.add("A",["C"])
graph.add("F",["A"])
puts "tree for A: "
graph.print_tree("A")
graph.print_graph

# graph.delete_branch("G", "A")  #test error first element
# graph.delete_branch("A", "H")  #test error second element
# graph.neighbors("I")  #test error value



__END__

# ------------
## 3. Get real

We can use this graph model for the following programming request:

Implement a program to manage pair programming between boots. 
The overall goal is to be able to tell who has already paired with who.
Below some functionnalities that should be implemented
- for each boot, you should be able to print the list of all the boots he paired with.
- each boot can have paired with 0 or more boots.
- if Sherif has paired with Jesse, the list of Sherif should display Jesse, 
and Jesse's list should display Sherif
- you should be able to add a new boot to an existing list of paired with
- you should be able, for two boots, to check if they already paired
- you should be able to delete a pairing session
- finally, you should print a list of every boot with the list of boots he paired with.