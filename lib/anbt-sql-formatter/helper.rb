class AnbtSql
  class Stack
    include Enumerable

    def initialize
      @arr = []
    end

    def each
      @arr.each{|item|
        yield item
      }
    end

    def clear
      @arr.clear
    end

    def push(o)
      @arr.push o
    end

    def pop
      @arr.pop
    end
  end

  module StringUtil
    def char_at(str, n)
      if n < 0 || str.size - 1 < n
        raise IndexOutOfBoundsException
      end

      str.slice(n, 1)
    end

    def equals_ignore_case(str_a, str_b)
      str_a.casecmp(str_b) == 0
    end
  end

  module ArrayUtil
    def self.remove(ary, n)
      ary.delete_at n
    end
  end
end

class Array

  def get(n)
    if n >= self.size || n <= -1
      raise IndexOutOfBoundsException
    end

    self[n]
  end

  def add(n,o)
    self.insert(n,o)
  end
end
