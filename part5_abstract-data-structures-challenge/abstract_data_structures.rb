# The basic operations provided by a graph data structure G usually include:
# adjacent(G, x, y): tests whether there is an edge from node x to node y.
# neighbors(G, x): lists all nodes y such that there is an edge from x to y.
# add(G, x, y): adds to G the edge from x to y, if it is not there.
# delete(G, x, y): removes the edge from x to y, if it is there.
# get_node_value(G, x): returns the value associated with the node x.
# set_node_value(G, x, a): sets the value associated with the node x to a.
# Structures that associate values to the edges usually also provide:
# get_edge_value(G, x, y): returns the value associated to the edge (x,y).
# set_edge_value(G, x, y, v): sets the value associated to the edge (x,y) to v.

class Graph

  def initialize(first_vertice)
    @vertices = { first_vertice => [] }
  end

  def add_edge(edge_name, vertice1, vertice2)
    @vertices[edge_name] << vertices << vertice2
  end

end


# DRIVER CODE
graph = Graph.new('Kevin Bacon')
{'Man without a Shadow' => ['Kevin Bacon','Elisabeth Shue,', 'David Hasselhoff']}
graph.add_edge('Man without Shadow', 'Kevin Bacon', 'Elisabeth Shue')
graph.adjacent?('Kevin Bacon', 'Elisabeth Shue') # true
graph.neighbors?(vertice)

graph.delete_edge(vertice1, vertice2)
graph.get_vertice_value(vertice)
graph.set_vertice_value(vertice, new_value)
