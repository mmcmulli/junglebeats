require_relative "node"
require 'pry'

class LinkedList

  attr_accessor :head, :next_node, :data

  def initialize(data = nil)
    @head = Node.new(data)
    @count
  end

  def tail
    current_node = @head
    until current_node.next_node == nil #keep calling next node until you readch nil
      current_node = current_node.next_node
    end
    current_node
  end

  def append(data)
      tail.next_node = Node.new(data)
  end

  def count
    current_node = @head
    counter = 0
    until current_node.next_node == nil
      counter += 1
      current_node = current_node.next_node
    end
  counter += 1
  end

  def to_string
    words = []
    current_node = @head
    words << current_node.data
    while current_node.next_node !=nil
      current_node = current_node.next_node
      words << current_node.data.to_s
    end
    words.join(" ")
  end

  def prepend(data)
    current_node = @head
    @head = Node.new(data)
    @head.next_node = current_node
  end

  def insert(position, data)
    new_node = Node.new(data)
    following_node = new_node(position + 1)
    preceeding_node = new_node(position - 1)
    new_node.next_node = following_node(position)
    preceeding_node(position).next_node = new_node
  end

  def includes?(data)
    tail = @tail
    if tail == data
        true
    else
      false
    end
  end

  def pop
    @count -= 1
    if next_node == nil

      #return tail's data

    #removes last element from the list and returns its value
    end
  end 

end

# binding.pry
