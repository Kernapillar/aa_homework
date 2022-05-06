class Stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end
end


class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end


class Map

    def initialize
        @map = []
    end

    def set(key, val)
        @map.each do |pair|
            if pair[0] == key
                pair[1] = val
                return true
            end
        end
        @map << [key, val]
    end

    def get(key)
        @map.each do |pair|
            return pair if pair[0] == key
        end
        return nil
    end

    def delete(key)
        # @map.each.with_index do |pair, i|
        #     if pair[0] == key
        #         @map = @map[0...@map[i]] + @map[@map[i+1]..-1]
        #     end
        # end
        filter = []
        @map.each do |pair|
            filter << pair unless pair[0] == key
        end
        @map = filter
    end

    def show
        @map.each {|pair| p pair}
    end

end