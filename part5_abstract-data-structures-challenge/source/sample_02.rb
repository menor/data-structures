# BINARY TREE

# Description

# A binary tree is a structure where, beginning with a root node, each node may
# have up to 2 nodes under it. A value to the left is guaranteed to be less
# than it's parent, while a value to the right is guaranteed to be greater than
# or equal to it. A node's left/right value may also be nil, and each node may
# also have a reference to it's parent node. The advantage to a binary tree is 
# that to search to insert into it, when you go left or right at each node you
# are halving the remaining options in the best case scenario.


# Implementation

class Node
  attr_accessor :value, :left, :right

  def initialize(value=nil, left=nil, right=nil)
    @value = value
    @left  = left
    @right = right
  end
end


class BinaryTree
  attr_reader :root_node

  def initialize(root_node=nil)
    @root_node = root_node
  end

  def insert(value, node = @root_node)
    if node == nil
      @root_node = Node.new(value)
    elsif value < node.value
      if node.left == nil
        node.left = Node.new(value)
      else
        insert(value, node.left)
      end
    elsif value >= node.value
      if node.right == nil
        node.right = Node.new(value)
      else
        insert(value, node.right)
      end
    end
  end
end

# Tests
btree = BinaryTree.new
btree.insert(50)
btree.insert(40)
btree.insert(30)
btree.insert(100)
btree.insert(49)

p btree.root_node.value == 50  # First value becomes the root node
p btree.root_node.left.value == 40  # Inserted at left of root
p btree.root_node.right.value == 100  # Inserted at right of root
p btree.root_node.left.left.value == 30  # Inserted at left of the root's, left node
p btree.root_node.left.right.value == 49  # And 49 is inserted to the right of 40

#       50
#      /  \
#    40    100
#   /  \
# 30    49


# Get Real

# A real-world problem that could use a binary tree would be organizing,
# sorting, and searching through a list of people. We can set their value to be
# their name, but perhaps there is much more information in the Person class.
# Having a binary tree would allow us to not only search through the names very
# quickly, but also insert into the tree very quickly as well. By quickly, I
# mean in O(log(n)), since we halve the remaining values at each node.