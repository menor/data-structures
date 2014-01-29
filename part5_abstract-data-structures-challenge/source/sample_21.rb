# 1. Describe

# ADS - Trees
# Trees are composed of nodes, and each node contains a value and has references
# (links) to other nodes (children nodes). All trees initialize from root nodes
# (which have no parent nodes). Nodes are not allowed to have more than one parent
# node and cannot link to any other nodes with parents.  
 
# ------------
# 2. Implement

class Tree
  
	def initialize(root_value)
		@root_value = root_value
		@tree = Hash.new
		@tree[:root] = [@root_value, []]
	end

	def add_node(parent_node_key, new_node_key, value)
		parent_node_key = parent_node_key.downcase.to_sym
		new_node_key = new_node_key.downcase.to_sym
		if @tree.has_key?(new_node_key)
			puts "New node key must be unique."
		elsif !@tree.has_key?(parent_node_key)
			puts "Given parent node key does not exist."
		else
			@tree[new_node_key] = [value, []]
			@tree[parent_node_key][1] << new_node_key
		end
	end

	def return_node_value(node_key)
		@tree[node_key.downcase.to_sym][0]
	end

	def return_node_children(node_key)
		@tree[node_key.downcase.to_sym][1]
	end

end

# example: breaking down a number into it's prime factors

factors = Tree.new(20) # creates new tree with parent node value of 20
factors.add_node("root", "first_factor", 2) # creates new child node of root node with value of 2
factors.add_node("root", "second_factor", 10) # creates additional child node for root node with value of 10
factors.add_node("second_factor", "third_factor", 2)
factors.add_node("second_factor", "fourth_factor", 5)
p factors.return_node_value("first_factor") # => 2
p factors.return_node_value("second_factor") # => 10
p factors.return_node_value("third_factor") # => 2
p factors.return_node_value("fourth_factor") # => 5
p factors.return_node_children("root") # => [:first_factor, :second_factor]
p factors.return_node_children("second_factor") # => [:third_factor, :fourth_factor]
p factors.return_node_children("fourth_factor") # => []

# ------------
# 3. Get real

# This data structure could be useful for tracking recursive methods which require
# multiple callbacks. Each node could store the result of each method call.