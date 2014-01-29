# 1. Describe    
# A graph consists of a group of vertices, and the edges that
# connect those vertices. A vertex is represented by a name or key, and an
# edge is represented by the ordered pair (x,y) where x and y are the names of
# the vertices that the edge connects. In this case I'm not going to worry
# about edge direction, so (x,y) = (y,x). Vertices may have values as well as names. 
# Vertex names are unique, but values are not necesarrily unique.

# ------------ # 2. Implement
class Nondirectional_Graph

  def initialize(nodes_and_refs)
    @graph = {}
    nodes_and_refs.each do |node, refs|
      temp_array = [nil]
      @graph[node] = temp_array << refs
    end
  end

  def print
    puts @graph.inspect
  end

  def print_nodes
    names_values = {}
    @graph.each { |node, data| names_values[node] = data[0] }
    puts "This graph contains the following nodes and corresponding 
          values: #{names_values}"
  end

  def set_node_value(node, value)
    if @graph.has_key?(node)
      @graph[node][0] = value
    else 
      raise "That node does not exist"
    end
    return nil
  end

  def get_node_value(node)
    if @graph.has_key?(node)
      @graph[node][0]
    else 
      raise "That node does not exist"
    end
  end

  def adjacent?(node1, node2)
    if @graph.has_key?(node1) && @graph.has_key?(node2)
      if self.neighbors(node1).include?(node2)
        true
      else
        false
      end
    else
      raise "One or more of those nodes do not exist"
    end
  end

  def neighbors(node)
    if @graph.has_key?(node)
      @graph[node][1]
    else 
      raise "That node does not exist"
    end
  end

  def add_edge(node1, node2)
    if @graph.has_key?(node1) && @graph.has_key?(node2)
      if self.adjacent?(node1, node2)
        raise "This edge already exists"
      else
        @graph[node1][1] << node2
        @graph[node2][1] << node1
      end
    else
      raise "One or more of those nodes do not exist"
    end
    return nil
  end

  def add_node(node, value = nil, refs = [])
    @graph[node] = [value, refs]
    refs.each do |ref_node|
      @graph[ref_node][1] << node
    end 
    return nil
  end

  def delete_edge(node1, node2)
    @graph[node1][1].delete(node2)
    @graph[node2][1].delete(node1)
  end

  def delete_node(remove_node)
    @graph.delete(remove_node)
    @graph.each do |node, data|
      if data[1].include?(remove_node)
        data[1].delete(remove_node)
      end
    end
  end

end

## Driver code

nodes_and_refs = {"a" => ["b","c"], "b" => ["a"], "c" => ["a"]}


my_graph = Nondirectional_Graph.new(nodes_and_refs)

# my_graph.print
# # my_graph.print_nodes
# puts my_graph.neighbors("b").inspect # => ["a"]
# puts my_graph.adjacent?("c","a") # => true
# my_graph.set_node_value("a", 5)
# # my_graph.print_nodes
my_graph.add_edge("b","c")
# # my_graph.print
# my_graph.add_node("d", 3, ["a"])
puts my_graph.adjacent?("b", "c") # => true
# # my_graph.print
# my_graph.delete_node("d")
my_graph.delete_edge("b","c")
puts my_graph.adjacent?("b", "c") # => false
# puts my_graph.adjacent?("a", "d") # => error node missing
# my_graph.print


# puts my_graph.neighbors("a").inspect # => "b', "c", "d"
# my_graph.delete_edge(["a","d"])
# puts my_graph.adjacent?(["d","a"]) # => false

# puts my_graph.get_node_value("a") # => Hey
# # puts my_graph.get_node_value("g") # node not in graph
# my_graph.set_node_value("a", "Oi! You!")
# puts my_graph.get_node_value("a") # Oi! You!

# ------------ # 3. Get real
# A sudoku board is an example of a non-directional graph. Each square is a node,
# and the value of the node is the number in the square. Each square is connected
# to the other nodes in its row, column, and box. You only need to model each 
# edge once, since [sqaure1, square2] is the same as [square2, square1] Using a 
# graph allows you to model the relationships between squares without the concepts 
# of row, column, or box. To solve the puzzle, give each node a value that is different 
# from the values of ll the nodes it is connected to. Another name for this is vertex
# coloring. No two connected vertices may have the same color (value). There are 
# algorithms for solving vertex coloring problems, which would work to solve any 
# sudoku puzzle.