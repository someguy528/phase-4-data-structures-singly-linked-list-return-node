require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # stack = []
    # last_node = head
    # while last_node != nil
    #   stack.push(last_node)
    #   last_node = last_node.next_node
    # end
    # x = n
    # while x > 1 && stack.size > 0
    #   stack.pop
    #   x -= 1
    # end
    # if stack.length > 0 && n > 0
    #   stack[stack.length-1].value
    # else
    #   nil
    # end
    return nil unless head
    x = 0
    last_node = head
    while last_node
      last_node = last_node.next_node
      x += 1
    end
    return nil if n > x || n < 1

    last_node = head
    i = 0
    while i < x - n 
      last_node = last_node.next_node
      i += 1
    end
    last_node.value

  end

end
