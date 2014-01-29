# 1. Describe

# A tree data structure represents a tree-type structure which contains a set of linked nodes.
# The tree strcutre begins at a root node which has no parent node.  Each node contains a value and
# a list of the nodes that are its children.  However, each node in the data structure does not contain 
# a reference to its parent node. 

# 2. Implement
class Tree
  attr_reader :root

  def initialize
    @root = Hash.new
  end

  def build_node(str)
    node = @root
    str.each_char do |ch|
      node[ch] ||= Hash.new
      node = node[ch]
    end
    # node[:end] = true
  end

  def find(str)
    node = @root
    str.each_char do |ch|
      return nil unless node = node[ch]
    end
    # node[:end] && true
    end
end


tree = Tree.new
p tree.build_node("sea")
p tree.build_node("seen")
p tree.build_node("high")
p tree.find("se")
p tree.root


# # 3. Get Real

# This type of data structure could be useful in mapping out the directories of 
# a computer's operating system.  

# This can also be used to store sorted data.  You could assign specific branches
# of the tree data strcture to hold data. For example, you could have a tree that
# stores the numbers 1-50 on one branch and 50-100 on another branch.

