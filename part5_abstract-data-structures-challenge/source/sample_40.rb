# a binary tree is a hierarchial web of nodes which are connected to other nodes. We can
# traverse and retreive the data in each node by asking the parent node
# what its children are. Each node has a parent, unless it is the root.
# An example binary tree is an a family tree

class Node

  def initialize(name, children=[])
    @name = name
    @children = children.first(2) #only allows for two children per node
  end

  def add_a_child(child)
    return nil unless [child].flatten.length == 1 #only allows one child
    return "No more children" if @children.length >= 2
    @children = @children << child
  end

  def report_name #allows us to read @name outside of a class's instance
    @name
  end

  def report_children
    @children
  end
end


class BinaryTree
  attr_reader :base

  def initialize(node = nil)
    @base = node 
  end

  def set_base(node)
    @base = node
  end

  def find?(name, temp_base = @base)
    return true if temp_base.report_name == name
    temp_base.report_children.each do |child| # [child, child]
      result = find?(name, child)
      return true if result == true
    end
  end


end


family_tree = BinaryTree.new
mac = Node.new("mac")
avalon = Node.new("avalon", [mac]) #avalon is the base, mac is the branch or child

family_tree.set_base(avalon)
puts "This is our base:"
p family_tree.base

puts "Find mac:"
puts family_tree.find?("mac") == true

# => 
# This is our base:
# #<Node:0x103c736f8 @children=[#<Node:0x103c73798 @children=[], @name="Mac">], @name="Avalon">
