class Vertex
  attr_reader :data, :neighbors
  def initialize(data, neighbors = {} ) # neighbors hash matches out-vertex to its weight
    @data = data
    @neighbors = neighbors
  end
end

class Graph
  attr_reader :vertices
  def initialize()
    @vertices = []
  end

  def add(data, neighbors = {})
    @vertices << Vertex.new(data, neighbors)
    neighbors.each do |neighbor, weight|
      unless @vertices.include?(neighbor)
          @vertices << Vertex.new(neighbor, data => weight)
      end
    end
  end

  def adjacent(v1, v2)
    v1.neighbors.include?(v2)
  end

  def delete(v1, v2)
    v1.neighbors.delete(v2)
    v2.neighbors.delete(v1)
  end

  def add_edge(v1, v2, length)
    @vertices.select { |v| v.data == v2 }[0].neighbors[v1] = length
    @vertices.select { |v| v.data == v1 }[0].neighbors[v2] = length
  end

  def print
    vertices.each do |v|
      puts "Vertex: #{v.data}"
      puts "   Neighbors: #{v.neighbors}"
    end
  end

  def DFS # depth first search
  end

  def BFS # breadth first search
  end
  
    # def Dijkstra #Dijkstra's Algorithm
  #   distances = {}
  #   previous = {}
  #   @vertices.each do |v|
  #     distances[v] = 1_000_000_000     ### initializing distances
  #     previous[v] = nil
  #   end

  #   unvisited = []
  #   @vertices.each { |v| unvisited << v}    # implement priority queue later

  #   source = unvisited[0]
  #   distances[source] = 0
    
  #   unvisited.sort_by { |v| distances[v] }
  #   unvisited.each { |i| puts "---  #{i.data}  --- #{i.neighbors}"}

  #   distances.each { |k,v| puts "key- #{k.data},, value #{v}" }
  #   until unvisited.empty?
  #     u = unvisited.shift
  #     if distances[u] == 1_000_000_000
  #       break
  #     end

  #     u.neighbors.each do |neighbor, weight|
  #         alt = distances[u] + weight
  #         p alt
  #         if alt < distances[neighbor]
  #           previous[neighbor] = u
  #           unvisited.sort_by { |v| distances[v] }
  #         end
  #     end
  #   end

  #   distances.each { |k,v| puts "vertex: #{k.data}"; puts "    v   ale: #{v}"}
  # end
end



x = Graph.new

x.add("San Francisco", {"San Jose" => 50, "LA" => 300, "NY" => 3000})
x.add_edge("San Jose", "NY", 150)
x.add_edge("San Jose", "LA", 25)

x.Dijkstra
x.print