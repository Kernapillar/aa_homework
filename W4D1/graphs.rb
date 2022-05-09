require "set"
class GraphNode

    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end


end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new
    while queue.length != 0
        # puts queue
        if queue[0].value == target_value 
            # puts queue[0]
            return target_value
        elsif queue[0].value != target_value
            queue[0].neighbors.each do |neighbor|
                queue << neighbor unless visited.include?(neighbor)
            end
            # queue += queue[0].neighbors unless visited.include?(queue[0.neighbors])
            visited << queue.shift
        end
    end
    nil
end

p bfs(a, "f")