# 1. Describe    
# A graph consists of a group of vertices, and the edges that
# connect those vertices. A vertex is represented by a name or key, and an
# edge is represented by the ordered pair (x,y) where x and y are the names of
# the vertices that the edge connects. In this case I'm not going to worry
# about edge direction, so (x,y) = (y,x). Vertices may have values as well as names. 
# Vertex names are unique, but values are not necesarrily unique.

# ------------ # 2. Implement
class Nondirectional_Graph
  attr_reader :node_hash, :edge_array

	def initialize(node_hash,edge_array)
		@node_hash = node_hash
		@edge_array = edge_array
	end

	def adjacent?(edge_pair)
		if @edge_array.include?(edge_pair) || @edge_array.include?(edge_pair.reverse)
			return true
		else
			return false
		end
	end

	def neighbors(node)
		neighbs = []
		temp_edges = @edge_array.dup
		temp_edges.size.times do |index|
			# puts temp_edges[index].inspect
			if temp_edges[index].include?(node)
				temp_pair = temp_edges[index].dup
				temp_pair.delete(node)
				neighbs << temp_pair
			end
		end
		return neighbs
	end

	def add_edge(edge_pair)
		if @node_hash.has_key?(edge_pair[0]) && @node_hash.has_key?(edge_pair[1])
      if self.adjacent?(edge_pair)
				puts "That edge already exists"
			else
			  @edge_array << edge_pair
			end
		else
			puts "At least one of those nodes does not exist. Please add the node to the graph before adding this edge."
	  end
	end

	def add_node(new_node, node_value = nil) 
		if @node_hash.has_key?(new_node) == false
			@node_hash.store(new_node, node_value)
		else
			puts "That node is already present in the graph"
		end
	end

	def delete_edge(edge)
		if self.adjacent?(edge)
			@edge_array.delete(edge)
		else
			puts "That edge is not present"
		end
	end

	def get_node_value(node_key)
		if @node_hash.has_key?(node_key) 
			return @node_hash[node_key]
		else
			puts "That node is not in the graph"
		end
	end

	def set_node_value(node_key, new_val)
		if @node_hash.has_key?(node_key) 
			@node_hash[node_key] = new_val
		else
			puts "That node is not in the graph"
		end
	end

end

## Driver code

nodes = {"a" => "Hey", "b" => "good", "c" => "lookin"}
edges = [["a","b"], ["c","a"]]

my_graph = Nondirectional_Graph.new(nodes, edges)

puts my_graph.adjacent?(["c","a"]) # => true
puts my_graph.adjacent?(["a","c"]) # => true
puts my_graph.adjacent?(["b","c"]) # => false
my_graph.add_edge(["b","c"])
puts my_graph.adjacent?(["b","c"]) # => now true
my_graph.add_edge(["a","d"]) #=> should tell me nodes not in graph
my_graph.add_node("d")
my_graph.add_node("d") #should tell me already in
my_graph.add_edge(["a","d"]) # => shouldn't raise message
puts my_graph.adjacent?(["d","a"]) # => true
my_graph.add_edge(["a","d"]) # => should tell me already in
puts my_graph.neighbors("b").inspect # => "a" , "c"
puts my_graph.neighbors("a").inspect # => "b', "c", "d"
my_graph.delete_edge(["a","d"])
puts my_graph.adjacent?(["d","a"]) # => false

puts my_graph.get_node_value("a") # => Hey
puts my_graph.get_node_value("g") # node not in graph
my_graph.set_node_value("a", "Oi! You!")
puts my_graph.get_node_value("a") # Oi! You!

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