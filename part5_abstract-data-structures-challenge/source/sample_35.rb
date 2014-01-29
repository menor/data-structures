# 1. Describe
# TREE
# A tree is an abstract data structure that is defined by having a hierarchal
# tree strcture, with a root value and subtrees of children. These nodes
# are represented as a set of linked nodes. Nodes typically contain some
# sort of data along with information of its parent node and/or children nodes.
# If a node has no parent (the topmost node), it is known as the "root node".
# If a node has no children nodes, it is known as a "leaf node" or "terminal node".
 
# ------------
# 2. Implement
 
 class Tree
   def initialize
      @tree = []
   end

   def add_node(obj)
   	 @tree << obj
   end

   def remove_last_node
   	 @tree.pop
   end

   def parent_index_of(child_index)
   	 return "This is the Root Node" if child_index.zero?

   	 return (child_index - 1)/2
   end

   def left_child_index_of(index)
   	 l_child = index*2 + 1
   	 return "No left child for this index" if l_child >= @tree.length
   	 l_child
   end

   def right_child_index_of(index)
     r_child = index*2 + 2
   	 return "No right child for this index" if r_child >= @tree.length
   	 r_child
   end
 end

# big_green = Tree.new
# big_green.add_node(1)
# big_green.add_node(2)
# big_green.add_node(3)
# big_green.add_node(4)
# big_green.add_node(5)
# big_green.add_node(6)
# big_green.add_node(7)

# p big_green

# p big_green.left_child_index_of(2)
# p big_green.left_child_index_of(3)

# p big_green.right_child_index_of(0)
# p big_green.right_child_index_of(1)

# p big_green.parent_index_of(0)
# p big_green.right_child_index_of(6)
 
# ------------
# 3. Get real

# There is always a need to search through data in programming. With Trees, 
# you can traverse, sort, and search through the tree various ways, depending
# on what you're looking for. For instance, a binary search tree is a great way
# to search a tree because depending on if what you're looking for is greater
# than or less than the current node, you can eliminate half of the tree per
# search. This gives logarithmic efficiency.

