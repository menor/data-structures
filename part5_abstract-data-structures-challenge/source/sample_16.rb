# 1. Describe
# Tree
# A tree data structure with a collection of linked nodes that simulates a tree-like structure. Each node may contain a value or condition. It is a powerful way organize data objects based on  hierarchical relationships. 

# Ex: Family Tree 
# Children are grouped under their parents in the tree
#      *
#    /  \
#   *    *
#  / \  /|\
# *   ** * *
# The asterisks are nodes. The node at the top is the starting point or root. 
# The / \ between nodes are branches that links the nodes
# A node that has no branches underneath it is called a leaf

# ------------
# 2. Implement
class Node
    attr_accessor :value, :children

    def initialize(value, children = [])
      @value = value
    	@children = children
    end

    def to_s(indent=0)
    	value_s = @value.to_s
    	sub_indent = indent + value_s.length
    	value_s + @children.map { |child| " * " + child.to_s(sub_indent + 3) }.join("\n" + ' ' * sub_indent)
    end
end

ROOT = Node.new('root', %w{ farleft left center right farright }.map { |str| Node.new(str) } )
puts "Original Tree"
puts ROOT
puts

ROOT.children.each do |node| 
    node.children = %w{ one two three four }.map { |str| Node.new(node.value + ':' + str) }
end
puts "New Tree"
puts ROOT
puts


# ------------
# 3. Get real
# There are many applications in which the tree structure can be applied. For example, in a video game, the main character can open many doors in which each door can lead the character down a different path. Each path can have multiple doors in which those path can lead to a different end point. At some point the character may need to start over and try different doors to beat the game.


# Each door is a node and each path is a branch. The recursive part would be every leaf (except) would bring the player back to the root. The leaf that is not recursive is the end of the game.