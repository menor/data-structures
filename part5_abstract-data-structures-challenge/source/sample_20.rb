# 1. Describe
# A tree represent a specific abstract data type (ADT) similar to an ordered list.
# A tree is defined in terms of nodes and values. A node is also refered to as
# the "parent" of a "child." In the example below, A is a parent node, and B,C are
# children.
#    e.g.       A
#              / \
#             B   C
# For each node and value there exists a "reference" between them. Using mutual
# recursion trees can be defined in terms of themselves to create, "forests:"
#    e.g.
#                    (Parent)
#                /     |            |
#               A      B           ...
#              / \    / \      /   |  |   |  \ 
#             i   j  u   v   x0   x1  x2  x3  x4 ...
#                             |   |   |   |   |
#                            ... ... ... ... ...
# or, symbolically, f: [t[1], ... , t[k]]
#                   t: v f

# ------------
# 2. Implement
def tree(value, forrest)
  tree = {value => forrest}
end

puts tree("Who is your daddy?", "And what does he do?")
#{"Who is your daddy?"=>"And what does he do?"}

puts tree("Parent", ["a", "b", "c", "d"] )
#{"Parent"=>["a", "b", "c", "d"]}

forrest_through_sleeze = tree("Parent", ["a", "b", "c", "d"] )
puts tree("Super Parent", forrest_through_sleeze)
#{"Super Parent"=>{"Parent"=>["a", "b", "c", "d"]}}

# ------------
# 3. Get real
# A tree would be a useful data type to keep track of multiple independent
# (primitive) data strucutures for a given parent. Keeping track of users'
# attributes for a social network would seem a logical choice for employing a
# tree.
     # e.g.
     #               All Users
     #                   |
     #              Specific User
     #            /      |        \
     #        Attr.1  Attr.2   ... Attr.n
# Attributes (1..n) do not have a specific primitive data type, but are connected
# to our our Specific User through their references, upon which we can perform a
# variety of different methods (e.g. loops, recursion, et. al.).