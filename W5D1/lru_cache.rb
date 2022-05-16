class LRUCache
    def initialize(n)
      @size = n
      @cache = []
  
    end

    def count
      # returns number of elements currently in cache
      @cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @cache.include?(el)
        idx = @cache.index(el)
        @cache.delete_at(idx)
        @cache.unshift(el)
      elsif count == size
        @cache.pop
        @cache.unshift(el)
      else
        @cache.unshift(el)
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      p cache

    end

    private
    # helper methods go here!
    attr_reader :size, :cache

  end